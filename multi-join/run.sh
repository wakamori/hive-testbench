#!/bin/sh

#
# run.sh
#
# Usage:
#   ./run.sh
#

SCALE=2
FORMAT="textfile"
SCRIPT="multi-join-opt.sql"

do_run()
{
  OPT=$1
  NAME=$2
  DIR="`date +'%Y%m%d%H%M%S'`_${SCRIPT}_${NAME}"
  mkdir ${DIR}
  i=0
  while [ $i -lt 5  ]; do
    i=`expr $i + 1`
    echo "execute ${NAME} on scale factor=$SCALE ($i/5)"
    echo "use tpcds_text_${SCALE}; ${OPT}; source ${SCRIPT};" | hive 2>&1 | tee ${DIR}/${i}.log
  done
}

do_run "set hive.cbo.enable=true; set hive.cbo.greedy.join.order=true" cbo-greedy
do_run "set hive.cbo.enable=true; set hive.cbo.greedy.join.order=false" cbo
do_run "set hive.cbo.enable=false; set hive.cbo.greedy.join.order=false" non-cbo
