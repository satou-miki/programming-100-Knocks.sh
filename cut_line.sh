#!/bin/bash

#$1のファイルの$2列目を$3に保存
#ただし、$1のファイルはタブで区切られた2列以上のファイルに限る

declare -i CUT
CUT=$2
if [ $CUT -le $(head -n1 $1 | awk '{print NF}') ]
then
cut -f$CUT $1 > $3
else
echo "指定された列は存在しません"
fi
