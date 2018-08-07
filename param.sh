#!/bin/bash
echo value of parameter is $FromDate $ToDate
days=$((($(date -u -d $ToDate +%s) - $(date -u -d $FromDate +%s)) / 86400))
echo $days
START=1
END=8
for i in {$START..$END}
do
   echo "$i"
done
