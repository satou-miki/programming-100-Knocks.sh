#!/bin/bash


#$2のファイルの各行の$1の文字列の出現頻度を求め，出現頻度の高い順に並べる
cut -f $1 $2 | sort | uniq -c | sort -k1nr

