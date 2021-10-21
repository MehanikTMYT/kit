DB=latency

TS=$(date +%s)

T0=$(expr $TS - 30)
T1=$TS

rrdtool fetch $DB.rrd AVERAGE -s $T0 -e $T1
