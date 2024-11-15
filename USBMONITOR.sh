#!/bin/bash

echo "Welcome to Flori-Soft-open's USB Record tool :-D" | tee -a /var/log/usb_monitor.log
echo "At this time there are these devices:" | tee -a /var/log/usb_monitor.log
lsusb | tee -a /var/log/usb_monitor.log
sleep 6
clear
echo "Start Monitoring" | tee -a /var/log/usb_monitor.log
sleep 3
clear
udevadm monitor --udev --subsystem-match=usb | while read line; do
    echo "$line" | tee -a /var/log/usb_monitor.log
done
