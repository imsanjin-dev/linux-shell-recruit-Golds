#!/usr/bin/env bash

# Task 07: complete this script.
# Usage: ./scripts/analyze.sh FILE

# TODO: validate arguments
# TODO: validate file existence
# TODO: print:
# Total ERROR: <number>
# Top Code: <code>

if  [[ $# -eq 0 ]];then
    echo "Usage: ./scripts/analyze.sh FILE"
    exit 1
fi

if [[ ! -f  "$1" ]];then
    echo "Error: FILE not EXIST"
    exit 1
fi

error_count=$(grep "ERROR" "$1"|wc -l)
top_code=$(grep "ERROR" "$1"|cut -d" " -f5|cut -d"=" -f2|sort -n|uniq -c|sort -r|head -1|cut -c 9- )
echo "Total ERROR: $error_count"
echo "Top Code: $top_code"

