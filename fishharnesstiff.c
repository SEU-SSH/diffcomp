#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/wait.h>
#include <errno.h>

void run_tiff2pdf(const char *program, const char *input, const char *output) {
    pid_t pid = fork();
    if (pid == 0) {
        execl(program, program, "-o", output, input, NULL);
        perror("execl failed");
        exit(EXIT_FAILURE);
    } else if (pid > 0) {
        int status;
        waitpid(pid, &status, 0);
        // 检查子进程是否正常退出（退出码 0）
        if (!WIFEXITED(status) || WEXITSTATUS(status) != 0) {
            fprintf(stderr, "Child process failed: %d\n", WEXITSTATUS(status));
            exit(EXIT_FAILURE);
        }
    } else {
        perror("fork");
        exit(EXIT_FAILURE);
    }
}

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <input_tiff>\n", argv[0]);
        return EXIT_FAILURE;
    }

    const char *input = argv[1];
    const char *output0 = "output0.pdf";
    const char *output3 = "output3.pdf";

    // 确保输出文件可写
    unlink(output0);  // 清理旧文件
    unlink(output3);

    // 运行两个版本的 tiff2pdf，并捕获错误
    run_tiff2pdf("./benchmark/tiff-4.5.1/build_O0/tools/tiff2pdf", input, output0);
    run_tiff2pdf("./benchmark/tiff-4.5.1/build_O3/tools/tiff2pdf", input, output3);

    // 检查输出文件是否存在
    if (access(output0, F_OK) != 0 || access(output3, F_OK) != 0) {
        fprintf(stderr, "Output files not generated\n");
        return EXIT_FAILURE;
    }

    // 比较输出文件
    FILE *f0 = fopen(output0, "rb");
    FILE *f3 = fopen(output3, "rb");
    if (!f0 || !f3) {
        fprintf(stderr, "Failed to open output files\n");
        if (f0) fclose(f0);
        if (f3) fclose(f3);
        return EXIT_FAILURE;
    }

    int diff = 0;
    char buf0[4096], buf3[4096];
    size_t n0, n3;
    do {
        n0 = fread(buf0, 1, sizeof(buf0), f0);
        n3 = fread(buf3, 1, sizeof(buf3), f3);
        if (n0 != n3 || memcmp(buf0, buf3, n0) != 0) {
            diff = 1;
            break;
        }
    } while (n0 > 0);

    fclose(f0);
    fclose(f3);

    // 处理差异
    if (diff) {
        // 确保 differences 目录存在
        system("mkdir -p ./differences/");
        char cmd[1024];
        snprintf(cmd, sizeof(cmd), "cp '%s' ./differences/%s", input, input);
        if (system(cmd) != 0) {
            fprintf(stderr, "Failed to copy input file\n");
        }
        abort();  // 触发 AFL++ 记录崩溃
    }

    // 清理临时文件
    unlink(output0);
    unlink(output3);

    return 0;
}