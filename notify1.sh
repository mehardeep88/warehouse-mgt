#!/bin/bash

read -p "Enter desired date (YYYY-MM-DD): " date
read -p "Enter desired time (HH:MM): " time

message="Order has been received at ${date} ${time}"

delay=$(( $(date -d "${date} ${time}" +%s) - $(date +%s) ))

(sleep $delay && zenity --info --text "$message" --title "Reminder") &

echo "Item has been shipped"
