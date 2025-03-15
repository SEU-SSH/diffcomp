export AFL_I_DONT_CARE_ABOUT_MISSING_CRASHES=1

# 主实例绑定至CPU0
taskset -c 0 afl-fuzz -i corpus/pdf -o findings -M master -- ./harness @@ &

# 从实例绑定至CPU1-31，共31个核心
seq 1 23 | parallel -j 24 "taskset -c {} afl-fuzz -i corpus/pdf -o findings -S slave{} -- ./harness @@ &"

# 等待所有后台进程完成
wait