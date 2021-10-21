DB=latency
NAME=ping
GR=graph

IMG=graph.png

width=1024
height=1024

TS=$(date +%s)

T0=$(expr $TS - 2500)
T1=$TS

rrdtool graph $IMG \
 --width=$width --height=$height \
 --start $T0 --end $T1 \
 --full-size-mode \
 --disable-rrdtool-tag \
 --font-render-mode light \
 --border 0 \
 --color ARROW#00ff99 --color FRAME#00ff6c \
 --color FONT#7a7a7a --color GRID#0179ff \
 --color AXIS#3c4881 --color CANVAS#909090 \
 --color BACK#3333cc --color MGRID#0066ff \
 --watermark "$(date)"  \
 DEF:$GR=$DB.rrd:$NAME:AVERAGE \
 AREA:$GR#59ffff \
 LINE1:$GR#000000:"$TITLE"
