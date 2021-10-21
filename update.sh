DB=latency

while :
do
	TS=$(date +%s)
	VAL=$(sh graph.sh)

	echo "$VAL"

	rrdtool update $DB.rrd $TS:$VAL

	sleep 3
done
