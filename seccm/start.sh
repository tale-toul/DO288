#!/bin/sh
#Variables
WAIT_DEF=4
COUNT_DEF=0

if [ -z $WAIT ]
then
  echo "Variable WAIT not defined, using default value of $WAIT_DEF"
  WAIT=$WAIT_DEF
fi

if [ -z $COUNT ]
then
  echo "Variable COUNT not defined, using default value of $COUNT_DEF"
  COUNT=$COUNT_DEF
fi

while true
do
  echo "Waiting $COUNT"
  (( COUNT++ ))
  sleep $WAIT
done
