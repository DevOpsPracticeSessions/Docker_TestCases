#!/bin/bash
echo value of parameter is $FromDate $ToDate
days=$((($(date -u -d $ToDate +%s) - $(date -u -d $FromDate +%s)) / 86400))
cat $days
for ((i=1, j=10; i <= 5 ; i++, j=j+5))
do
 cat "Number $i: $j"
done
