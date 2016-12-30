#!/bin/bash

set -x

sleep 1

./executables/portal 1> /dev/null 2> ~/VideoStreamerFCUP_Logs/portal.txt &

sleep 1

./executables/server -f ~/Downloads/PopeyeAliBaba_512kb.mp4 -e libx264 -b 500k -v 640x360 --my_port 10066 --ff_port 54321 -k what -k are -k you -doing \
1> /dev/null 2> ~/VideoStreamerFCUP_Logs/serverAliBaba.txt &

sleep 1

./executables/server -f ~/Downloads/Popeye_forPresident_512kb.mp4 -e libx265 -b 500k -v 640x360 --my_port 10067 --ff_port 54322 -k basketball -k videogames -k stuff \
1> /dev/null 2> ~/VideoStreamerFCUP_Logs/serverPresident.txt &

sleep 1

./executables/client 1> /dev/null 2> ~/VideoStreamerFCUP_Logs/client.txt &

 sleep 1
 killall portal
 killall server
 killall icebox