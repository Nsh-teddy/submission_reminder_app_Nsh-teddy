#!/bin/sh

echo "Enter new assignment name:"
read new_name

sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=\"$new_name\"/" ./config/config.env

echo "Assignment updated to $new_name"
echo "Running reminder..."
./startup.sh
