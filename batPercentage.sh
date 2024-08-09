#! /bin/bash
while [[ True ]]; do

percentAsString=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage)
percent=${percentAsString: -4:3}
echo $percent

inputmodule-control led-matrix --percentage $percent --brightness 20
sleep 10

done
