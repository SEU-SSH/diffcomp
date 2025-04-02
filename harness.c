#define _GNU_SOURCE
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include <unistd.h>


void run_ncmdump(const char *program, const char *input, const char *output) {
  pid_t pid = fork();
  if (pid == 0) {  // 子进程
    execl(program, program,"-d",input,"-o", output, NULL);
    fprintf(stderr, "execl failed: %s\n", strerror(errno));
    exit(1);
  } else if (pid > 0) {  // 父进程
    int status;
    waitpid(pid, &status, 0);
  } else {
    perror("fork");
    exit(1);
  }
}

int main(int argc, char **argv) {
  if (argc < 2) {                                          // 参数小于2
    fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);  // 输出错误信息
    return 1;
  }

  const char *input = argv[1];          // 输入文件
  const char *output0 = "output0";  // 输出文件0
  const char *output3 = "output3";  // 输出文件3

  // 运行两个版本的pdftotext
  run_ncmdump("./benchmark_ncmdump/ncmdump_o0/ncmdump", input,
                output0);  // 运行xpdf_o0版本的pdftotext
  run_ncmdump("./benchmark_ncmdump/ncmdump_o3/ncmdump", input,
                output3);  // 运行xpdf_o3版本的pdftotext

  // 比较输出文件
  FILE *f0 = fopen(output0, "r");  // 打开输出文件0
  FILE *f3 = fopen(output3, "r");  // 打开输出文件3
  if (!f0 || !f3) {                // 如果打开失败
    if (f0) fclose(f0);            // 关闭输出文件0
    if (f3) fclose(f3);            // 关闭输出文件3
    return 0;
  }

  int diff = 0;                 // 是否不同
  char buf0[4096], buf3[4096];  // 缓冲区
  size_t n0, n3;                // 读取的字节数
  do {
    n0 = fread(buf0, 1, sizeof(buf0), f0);  // 读取输出文件0
    n3 = fread(buf3, 1, sizeof(buf3), f3);  // 读取输出文件3
    if (n0 != n3 ||
        memcmp(buf0, buf3, n0) != 0) {  // 如果读取的字节数不同或内容不同
      diff = 1;                         // 设置为不同
      break;                            // 退出循环
    }
  } while (n0 > 0);  // 如果读取的字节数大于0

  fclose(f0);  // 关闭输出文件0
  fclose(f3);  // 关闭输出文件3

  // 输出不同时保存输入并触发崩溃
  if (diff) {        // 如果不同
    char cmd[1024];  // 命令
    snprintf(cmd, sizeof(cmd), "cp '%s' ./differences/",
             input);  // 复制输入文件到差异文件夹
    system(cmd);      // 执行命令
    abort();          // 触发AFL++记录为crash
  }

  return 0;
}
