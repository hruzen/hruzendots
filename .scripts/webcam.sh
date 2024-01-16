#! /bin/bash

 ffplay -window_title Webcam -fast -max_delay 0 -max_probe_packets 1 -analyzeduration 0 -flags +low_delay -fflags +nobuffer -framerate 60 -vf "hflip" -video_size 320x200 /dev/video0
