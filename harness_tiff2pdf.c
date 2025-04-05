#define _GNU_SOURCE
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
        fprintf(stderr, "execl failed: %s\n", strerror(errno));
        exit(1);
    } else if (pid > 0) {
        int status;
        waitpid(pid, &status, 0);
    } else {
        perror("fork");
        exit(1);
    }
}

int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <input_tiff>\n", argv[0]);
        return 1;
    }

    const char *input = argv[1];
    const char *output0 = "output0.pdf";
    const char *output3 = "output3.pdf";

    // 运行两个版本的 tiff2pdf
    run_tiff2pdf("./benchmark/tiff-4.5.1/build_O0/tools/tiff2pdf", input, output0);
    run_tiff2pdf("./benchmark/tiff-4.5.1/build_O3/tools/tiff2pdf", input, output3);

    // 比较输出文件
    FILE *f0 = fopen(output0, "r");
    FILE *f3 = fopen(output3, "r");
    if (!f0 || !f3) {
        if (f0) fclose(f0);
        if (f3) fclose(f3);
        return 0;
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

    // 输出不同时保存输入并触发崩溃
    if (diff) {
        char cmd[1024];
        snprintf(cmd, sizeof(cmd), "cp '%s' ./differences/", input);
        system(cmd);
        abort();  // 触发AFL++记录为crash
    }

    return 0;
}