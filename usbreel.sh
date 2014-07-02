#!/bin/bash

while true
do

temp=$(grep -m 1 point_system_id /dev/ttyUSB0)

curl -F "context=${temp}" http://127.0.0.1/mpntaskfunnel.php
echo `date` "==" $temp >> /root/usbreel.txt
done

