#!/bin/sh

. ./config/config.env
. ./modules/functions.sh

submissions_file="./assets/submissions.txt"

echo "Assignment: $ASSIGNMENT"
echo "Days remaining to submit: $DAYS_REMAINING"
echo "--------------------------------------"

check_submissions "$submissions_file"
