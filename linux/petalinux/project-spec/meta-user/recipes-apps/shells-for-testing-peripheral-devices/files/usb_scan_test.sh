#!/bin/sh

for((loopn=0;loopn<40;loopn++));
do
    usleep 500000
    read_back=`lsusb |grep "Bus 001"|grep "ID 05e3:0610"`
    if [ "$read_back" = "" ];then
        continue
    fi
    read_back=`lsusb |grep "Bus 002"|grep "ID 05e3:0620"`
    if [ "$read_back" = "" ];then
        continue
    fi
    read_back=`lsusb |grep "Bus 001"|grep "ID 1d6b:0002"`
    if [ "$read_back" = "" ];then
        continue
    fi
    read_back=`lsusb |grep "Bus 002"|grep "ID 1d6b:0003"`
    if [ "$read_back" = "" ];then
        continue
    fi
    break;
done

if [ "$read_back" = "" ];then
    echo "hub_error" >> ${result_path}
    exit 0
fi

errdev=""
for((loopn=0;loopn<40;loopn++));
do
    usleep 500000
    read_back=`lsusb |grep "Bus 001"|wc -l`
    if [ ${read_back} -lt 3 ];then
        errdev="2.0"
        continue
    fi
    read_back=`lsusb |grep "Bus 002"|wc -l`
    if [ ${read_back} -lt 3 ];then
        errdev="3.0"
        continue
    fi
    errdev=""
    break;
done
if [ "${errdev}" != "" ];then
    echo "none_device${errdev}"
else
    echo "ok"
fi
