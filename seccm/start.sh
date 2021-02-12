#!/bin/sh
#Variables
WAIT_DEF=4
COUNT_DEF=0
FILE_TEXT="/opt/repo/text.txt"

if [ -z $WAIT ]
then
  echo "Variable WAIT not defined, using default value of $WAIT_DEF"
  WAIT=$WAIT_DEF
else
  echo "Variable WAIT is defined with value $WAIT"
fi

if [ -z $COUNT ]
then
  echo "Variable COUNT not defined, using default value of $COUNT_DEF"
  COUNT=$COUNT_DEF
else
  echo "Variable COUNT is defined with values $COUNT"
fi

while true
do
  echo "Waiting $COUNT"
  if [ -f $FILE_TEXT ]; then cat $FILE_TEXT; fi
  (( COUNT++ ))
  sleep $WAIT
done
