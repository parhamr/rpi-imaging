#!/bin/bash

# run this to stream h.264 video
# view the stream by opening rtsp://IP_ADDRESS:8554/
# dependencies:
#    sudo apt-get install vlc
# environment:
#    raspbian
#    rpi with camera

raspivid -o - -t 0 -w 640 -h 360 -n -sh 20 -sa 10 -awb auto -fps 25 | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554}' :demux=h264

