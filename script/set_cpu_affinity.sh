#!/system/bin/sh
change_task_affinity(){
    local ps_ret
    ps_ret="$(ps -Ao pid,args)"
    for temp_pid in $(echo "$ps_ret" | grep "$1" | awk '{print $1}'); do
        for temp_tid in $(ls "/proc/$temp_pid/task/"); do
            taskset -p "$2" "$temp_tid"
        done
    done
}
change_task_nice(){
    local ps_ret
    ps_ret="$(ps -Ao pid,args)"
    for temp_pid in $(echo "$ps_ret" | grep "$1" | awk '{print $1}'); do
        for temp_tid in $(ls "/proc/$temp_pid/task/"); do
            renice "$2" -p "$temp_tid"
        done
    done
}

change_task_nice "kswapd" "-4"
    change_task_affinity "kswapd" "4"
change_task_nice "oom_reaper" "-4"
    change_task_affinity "oom_reaper" "4"
