#! /bin/bash
# 
#  Replace text with something else in a given directory
#

function usage(){
    echo "replace.all.sh what_be_replaced replace_with_what where"
    exit 1
}

if [ $# != 3 ]
then
  usage
fi

what=$1
to=$2
where=$3

grep "$what" $where -Rl | xargs sed -i -e "s/$what/$to/g"
