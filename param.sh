#!/bin/bash
echo value of parameter is $FromDate $ToDate
days=$((($(date -u -d $ToDate +%s) - $(date -u -d $FromDate +%s)) / 86400))
echo $days
for var in $days
do
   echo $var
done
