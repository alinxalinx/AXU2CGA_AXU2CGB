#!/bin/sh

LED=504
KEY=508

while (($LED<=507))
do
	if [[ ! -e /sys/class/gpio/gpio"$LED" ]];then
		echo $LED >> /sys/class/gpio/export
		echo out > /sys/class/gpio/gpio"$LED"/direction
	fi
	LED=$(($LED+1))
done

while (($KEY<=511))
do
        if [[ ! -e /sys/class/gpio/gpio"$KEY" ]];then
        	echo $KEY >> /sys/class/gpio/export
        	echo in > /sys/class/gpio/gpio"$KEY"/direction
	fi
        KEY=$(($KEY+1))
done

#push KEY to contorl LED
LED_1_STS=0
LED_2_STS=0
LED_3_STS=0
LED_4_STS=0

echo -e "\e[1;32mLEDs and KEYs set OK, now you can click the KEYs to light up or turn off the LEDs\e[0m"

while ((1))
do
	#read key value
	KEY_1_STS=`cat /sys/class/gpio/gpio508/value`
	KEY_2_STS=`cat /sys/class/gpio/gpio509/value`
        KEY_3_STS=`cat /sys/class/gpio/gpio510/value`
        KEY_4_STS=`cat /sys/class/gpio/gpio511/value`

	if [ $KEY_1_STS -eq 0 ];then
		LED_1_STS=$((!LED_1_STS))
		#set led out value
		echo $LED_1_STS >> /sys/class/gpio/gpio504/value
		while (($((!KEY_1_STS))))
		do
			#wait key release
			KEY_1_STS=`cat /sys/class/gpio/gpio508/value`
		done
	fi
	if [ $KEY_2_STS -eq 0 ];then
                LED_2_STS=$((!LED_2_STS))
                #set led out value
                echo $LED_2_STS >> /sys/class/gpio/gpio505/value
                while (($((!KEY_2_STS))))
                do
                        #wait key release
                        KEY_2_STS=`cat /sys/class/gpio/gpio509/value`
                done
        fi
        if [ $KEY_3_STS -eq 0 ];then
                LED_3_STS=$((!LED_3_STS))
                #set led out value
                echo $LED_3_STS >> /sys/class/gpio/gpio506/value
                while (($((!KEY_3_STS))))
                do
                        #wait key release
                        KEY_3_STS=`cat /sys/class/gpio/gpio510/value`
                done
        fi
        if [ $KEY_4_STS -eq 0 ];then
                LED_4_STS=$((!LED_4_STS))
                #set led out value
                echo $LED_4_STS >> /sys/class/gpio/gpio507/value
                while (($((!KEY_4_STS))))
                do
                        #wait key release
                        KEY_4_STS=`cat /sys/class/gpio/gpio511/value`
                done
        fi

done



