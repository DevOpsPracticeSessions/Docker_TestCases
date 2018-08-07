#!/bin/bash
echo value of parameter is $FromDate $ToDate
D1=`date +%s -d "2007-12-19"`
D2=`date +%s -d "2008-02-09"`
echo ((diff_sec=D2-D1))
