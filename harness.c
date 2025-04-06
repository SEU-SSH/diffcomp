#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int run_cmd(const char *cmd, const char *input_file, const char *output_file) {
    char full_cmd[1024];
    snprintf(full_cmd, sizeof(full_cmd), "%s %s > %s 2>&1", cmd, input_file, output_file);
    return system(full_cmd);
}

int main(int argc, char *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <input>\n", argv[0]);
        return 1;
    }

    const char *input = argv[1];
    const char *cmd_O0 = "./tcpdump_O0 -nn -r";
    const char *cmd_O3 = "./tcpdump_O3 -nn -r";

    run_cmd(cmd_O0, input, "differences/o0_out.txt");
    run_cmd(cmd_O3, input, "differences/o3_out.txt");

    FILE *f1 = fopen("differences/o0_out.txt", "rb");
    FILE *f2 = fopen("differences/o3_out.txt", "rb");

    if (!f1 || !f2) return 1;

    int diff = 0;
    int c1, c2;
    while ((c1 = fgetc(f1)) != EOF && (c2 = fgetc(f2)) != EOF) {
        if (c1 != c2) {
            diff = 1;
            break;
        }
    }

    fclose(f1);
    fclose(f2);

    return diff;
}
