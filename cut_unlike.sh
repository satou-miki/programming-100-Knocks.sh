#!/bin/bash


#$1列目の文字列の異なりを抽出し重複している行はまとめて表示する
cut -f $1 $2 | sort | uniq -c


