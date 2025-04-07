#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/wait.h>
#include <errno.h>
#include <fcntl.h>

/**
 * @brief 运行 gif2txt 程序并将其输出重定向到指定文件。
 * 
 * @param program gif2txt 可执行文件路径
 * @param input 输入 GIF 文件路径
 * @param output 输出文件路径
 */
void run_gif2txt(const char *program, const char *input, const char *output) {
    pid_t pid = fork();
    if (pid == 0) { // 子进程
        // 打开输出文件，准备写入
        int fd = open(output, O_WRONLY | O_CREAT | O_TRUNC, 0644);
        if (fd < 0) {
            perror("open");
            exit(EXIT_FAILURE);
        }

        // 将标准输出重定向到文件
        if (dup2(fd, STDOUT_FILENO) < 0) {
            perror("dup2");
            close(fd);
            exit(EXIT_FAILURE);
        }
        close(fd);

        // 执行目标程序
        execl(program, program, "--tc", input, NULL);
        fprintf(stderr, "execl failed: %s\n", strerror(errno));
        exit(EXIT_FAILURE);
    } else if (pid > 0) { // 父进程
        // 等待子进程完成
        int status;
        waitpid(pid, &status, 0);
    } else { // fork 失败
        perror("fork");
        exit(EXIT_FAILURE);
    }
}

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
        return EXIT_FAILURE;
    }

    const char *input = argv[1]; // 输入 GIF 文件路径
    const char *output0 = "output0.txt"; // O0 版本的输出文件
    const char *output3 = "output3.txt"; // O3 版本的输出文件

    // 运行两个版本的 gif2txt
    run_gif2txt("./benchmark/ngiflib0/gif2txt", input, output0);
    run_gif2txt("./benchmark/ngiflib3/gif2txt", input, output3);

    // 比较输出文件
    FILE *f0 = fopen(output0, "rb");
    FILE *f3 = fopen(output3, "rb");

    if (!f0 || !f3) {
        if (f0) fclose(f0);
        if (f3) fclose(f3);
        fprintf(stderr, "Error opening files for comparison.\n");
        return EXIT_FAILURE;
    }

    int diff = 0;
    unsigned char buf0[4096], buf3[4096];
    size_t n0, n3;

    do {
        n0 = fread(buf0, 1, sizeof(buf0), f0);
        n3 = fread(buf3, 1, sizeof(buf3), f3);

        // 如果读取的字节数不同或内容不同，则认为文件不同
        if (n0 != n3 || memcmp(buf0, buf3, n0) != 0) {
            diff = 1;
            break;
        }
    } while (n0 > 0);

    fclose(f0);
    fclose(f3);

    // 如果文件内容不同，保存输入文件并触发崩溃
    if (diff) {
        char cmd[1024];
        snprintf(cmd, sizeof(cmd), "cp '%s' ./differences/", input);
        if (system(cmd) != 0) {
            fprintf(stderr, "Failed to copy input file to differences directory.\n");
        }
        abort(); // 触发 AFL++ 记录为 crash
    }

    return EXIT_SUCCESS;
}