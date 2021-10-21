DB=latency  #db name

NAME=ping #data name
TYPE=GAUGE #data type

STEP=10 #interval
TIMEOUT=15 #timeout

FUNC=AVERAGE #record
VALS=3 #values
RECS=100 #record

TS=$(date +%s)
echo $TS > $DB-start.txt

rm -f $DB

rrdtool create $DB.rrd --start $TS --step $STEP \
DS:$NAME:$TYPE:$TIMEOUT:U:U \
RRA:$FUNC:0.5:$VALS:$RECS
