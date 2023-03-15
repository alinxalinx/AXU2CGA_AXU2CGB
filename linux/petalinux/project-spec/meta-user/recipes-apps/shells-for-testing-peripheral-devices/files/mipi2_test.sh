#!/bin/sh

media-ctl -d /dev/media1 -V '"ov5640 1-003c":0 [fmt:UYVY8_1X16/1920x1080@1/30 field:none]'
media-ctl -d /dev/media1 -V '"80001000.mipi_csi2_rx_subsystem":0 [fmt:UYVY8_1X16/1920x1080 field:none]'
media-ctl -d /dev/media1 -V '"80001000.mipi_csi2_rx_subsystem":1 [fmt:UYVY8_1X16/1920x1080 field:none]'
media-ctl -d /dev/media1 -V '"80020000.v_proc_ss":0 [fmt:UYVY8_1X16/1920x1080 field:none]'
media-ctl -d /dev/media1 -V '"80020000.v_proc_ss":1 [fmt:UYVY8_1X16/1920x1080 field:none]'
gst-launch-1.0 -e v4l2src device=/dev/video1 ! video/x-raw,format=YUY2,width=1920,height=1080 ! kmssink bus-id=fd4a0000.zynqmp-display fullscreen-overlay=1

