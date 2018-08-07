#!/bin/bash
echo value of parameter is $FromDate $ToDate
start_date=$(date -j -f "%Y-%m-%d" "2010-05-15" "+%s")
end_date=$(date -j -f "%Y-%m-%d" "2010-06-01" "+%s")
echo $(( ($end_date - $start_date) / (60 * 60 * 24) ))
