#!/bin/sh -x

#
# run.sh
#
# Usage:
#   ./run.sh [SCRIPT]
#

SCALE=2
FORMAT="textfile"

if [ $# -eq 1 ]; then
  SCRIPT=$1
  DIR="`date +'%Y%m%d%H%M%S'`_${FORMAT}_${SCALE}_${SCRIPT}"
  mkdir ${DIR}
  i=0
  while [ $i -lt 5  ]; do
    i=`expr $i + 1`
    echo "execute $line on scale factor=$SCALE ($i/5)"
    echo "use tpcds_bin_partitioned_${FORMAT}_${SCALE}; source $line;" | hive 2>&1 | tee ${DIR}/${line}_${i}.log
  done
else
  DIR="`date +'%Y%m%d%H%M%S'`_${FORMAT}_${SCALE}"
  mkdir ${DIR}
  i=0
  ls *.sql | while read line; do
    echo "execute $line on scale factor=$SCALE"
    echo "use tpcds_bin_partitioned_${FORMAT}_${SCALE}; source $line;" | hive 2>&1 | tee ${DIR}/${line}.log
  done
fi
