#!/bin/bash
echo value of parameter is $FromDate $ToDate
days=$((($(date -u -d $ToDate +%s) - $(date -u -d $FromDate +%s)) / 86400))
echo $days
for ((i=1;i<3;i++))
       do
           echo "Number $i"
       done
