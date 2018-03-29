#!/bin/bash

eval 'networksetup -setairportpower en0 off'
sleep 1s
eval 'route flush'
sleep 1s
eval 'networksetup -setairportpower en0 on'
sleep 5s
eval 'osascript ~/connect-to-vpn/runTunnelblick.scpt "client_rizal"'
