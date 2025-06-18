#!/bin/bash

# Prompt for new assignment name
read -p "Enter new assignment name: " new_assignment

# Update the ASSIGNMENT in config/config.env
sed -i "2s|.*|ASSIGNMENT=\"$new_assignment\"|" submission_reminder_Teddy/config/config.env

echo "Assignment updated to $new_assignment"

# Re-run the reminder
cd submission_reminder_Teddy
./startup.sh
