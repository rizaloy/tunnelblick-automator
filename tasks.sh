#!/bin/bash

eval 'networksetup -setairportpower en0 off'
sleep 1s
eval 'route flush'
sleep 1s
eval 'networksetup -setairportpower en0 on'
sleep 5s
connection_name=$(<~/tunnelblick-automator/config.txt)
eval 'osascript ~/tunnelblick-automator/run-tunnelblick.scpt "$connection_name"'