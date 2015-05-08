#! /bin/bash
#
#  Replace some text in file names
#
#
#  given a list of files
#    
#     +folder
#     |- some-test.sh  
#     +-subfolder
#         |- some-test-question.sh
#
#  usage:
#
#     batch.rename some\-t t folder
#
#  gives:
#   
#     +folder
#     |- test.sh  
#     +-subfolder
#         |- test-question.sh
#
#

what=$1
to=$2
where=$3

find $where -type f -name "*$what*"|sed -e "p;s/$what/$to/" | xargs -n2 mv
