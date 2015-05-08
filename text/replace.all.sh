#! /bin/bash
# 
#  Replace text with something else in a given directory
#

what=$1
to=$2
where=$3

grep $what $where -Rl | xargs sed -i -e "s/$what/$to/g"
