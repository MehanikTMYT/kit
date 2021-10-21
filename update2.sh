while :
do
TS=$(date +%s)
VAL=$(ping -c 2 -q -n google.com | lua extract.lua)
echo "$VAL"
rrdtool update latency1.rrd $TS:$VAL
sleep 10
done
