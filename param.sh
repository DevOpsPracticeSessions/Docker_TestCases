#!/bin/bash
echo value of parameter is $FromDate $ToDate
echo $((($(date -u -d $ToDate +%s) - $(date -u -d $FromDate +%s)) / 86400))
