 #!/bin/bash
#Name and Process id of the most cpu consuming process

SECS=3600
UNIT_TIME=2

STEPS=$(($SECS/$UNIT_TIME))

echo watching CPU usage....;

#collect data in temp file

for((i=0;i<$STEPS;i++));do
echo "$(date)"
ps -eocomm,pid,pcpu|egrep -v '(0.0)|(%CPU)' 
sleep $UNIT_TIME

done
exit 0
