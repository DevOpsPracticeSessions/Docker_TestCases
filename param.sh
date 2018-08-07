#!/bin/bash
echo value of parameter is $FromDate $ToDate
echo $((($(date -u -d 2010-03-29 +%s) - $(date -u -d 2010-03-28 +%s)) / 86400))
