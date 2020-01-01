#!/bin/bash

logfile="$1"
start_date_time="$(head -n 1 $logfile | grep -Po '^\w{3}\s{1,2}\d{1,2}\s\d{2}:\d{2}:\d{2}')"
start_date_epoch=$(date --date="$start_date_time" +"%s")
end_date_time="$(tail -n 1 $logfile | grep -Po '^\w{3}\s{1,2}\d{1,2}\s\d{2}:\d{2}:\d{2}')" 
end_date_epoch=$(date --date="$end_date_time" +"%s")
echo $end_date_time
echo $start_date_time
echo $end_date_epoch
echo $start_date_epoch

total_time="$(expr $end_date_epoch - $start_date_epoch)"

echo $total_time
