# Introduction

This is a collection of ad-hoc scripts for Raspberry Pi.

### TemperatureMonitor
This script records the GPU and CPU temperature at the set frequency.
* To run the script in the background to record temperature every 60 sec:

```
nohup bash bin/TemperatureMonitor.sh -s 60 > ~/Output/piTemp.out 2>&1 &
```

* To view the temperature in live:

```
tail -f ~/Output/piTemp.out 
```

* To stop the monitor:

```
ps -ef | grep TemperatureMonitor
kill -9 {PROCESS_ID}
```