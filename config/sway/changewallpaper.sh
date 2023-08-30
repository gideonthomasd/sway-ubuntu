#!/bin/sh
pkill swaybg
sleep 2
swaybg -i $(find /home/phil/Pictures/wallpapers/ -type f | shuf -n1) -m fill &
OLD_PID=$!
while true; do
    sleep 60
    swaybg -i $(find /home/phil/Pictures/wallpapers/ -type f | shuf -n1) -m fill &
    NEXT_PID=$!
    sleep 5
    kill $OLD_PID
    OLD_PID=$NEXT_PID
done

#output * bg $(find /home/phil/Pictures/wallpapers/. -type f | shuf -n1) fill &

#swaymsg output HDMI-A-1 bg $(find /home/phil/Pictures/wallpapers/ -type f | shuf -n1) fill
#swaybg * -i $(find /home/phil/Pictures/wallpapers/ -type f | shuf -n1) -m fill
