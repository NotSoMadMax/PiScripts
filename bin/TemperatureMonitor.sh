#!/bin/bash

print_temp () {
    timestamp=$(date +'%F %T %a')
    gpu_temp=$(vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*')
    cpu_temp=$(cat /sys/class/thermal/thermal_zone0/temp)
    cpu_temp=$(echo "scale=1; $cpu_temp/1000" | bc)
    printf "${gpu_temp}, ${cpu_temp}, ${timestamp}\n"
}

while getopts s: flag
do
    case "${flag}" in
        s) 
            sleep_time=${OPTARG}
            ;;
        *)
            printf "Usage: ./TemperatureMonitor.sh -s FREQUENCY_IN_SEC\n"
            exit 1
            ;;
    esac
done

while true
do
    print_temp
    sleep "${sleep_time}s"
done