#!/bin/sh
# Siehe auch https://forum.archive.openwrt.org/viewtopic.php?id=47906

. /usr/share/libubox/jshn.sh

LAST_ACTIVE=0
LAST_BUSY=0
LAST_RX=0
LAST_TX=0

while [ 1 ]
do

JSON=$( /usr/bin/gluon-neighbour-info -d ::1 -p 1001 -t 1 -r statistics )
# wireless":[{"frequency":2472,"noise":-95,"active":1825410,"busy":580972,"rx":311435,"tx":92395}]

json_init
json_load "$JSON"
json_select wireless
json_select 1

json_get_var FREQUENCY frequency
json_get_var NOISE noise
json_get_var ACTIVE active
json_get_var BUSY busy
json_get_var RX rx
json_get_var TX tx

echo
#echo Frequency: $FREQUENCY
#echo Noise: $NOISE
#echo Active: $(expr $ACTIVE - $LAST_ACTIVE) ms
echo Busy: $(expr $BUSY - $LAST_BUSY) ms
echo Rx: $(expr $RX - $LAST_RX) ms
echo Tx: $(expr $TX - $LAST_TX) ms

AIRTIME_BUSY=`awk "BEGIN { print 100 * ($BUSY-$LAST_BUSY) / ($ACTIVE-$LAST_ACTIVE) }"`
echo Airtime busy: $AIRTIME_BUSY %

AIRTIME_RX_TX=`awk "BEGIN { print 100 * ($RX-$LAST_RX+$TX-$LAST_TX) / ($ACTIVE-$LAST_ACTIVE) }"`
echo Airtime RX/TX: $AIRTIME_RX_TX %

LAST_ACTIVE=$ACTIVE
LAST_BUSY=$BUSY
LAST_RX=$RX
LAST_TX=$TX

sleep 5
done
