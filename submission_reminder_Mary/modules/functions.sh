#!/bin/sh

check_submissions() {
    file=$1
    echo "Checking submissions in $file"
    tail -n +2 "$file" | while IFS=, read student assignment status
    do
        student=$(echo "$student" | xargs)
        assignment=$(echo "$assignment" | xargs)
        status=$(echo "$status" | xargs)
        if [ "$assignment" = "$ASSIGNMENT" ] && [ "$status" = "not submitted" ]; then
            echo "$student has not submitted the $ASSIGNMENT assignment."
        fi
    done
}
