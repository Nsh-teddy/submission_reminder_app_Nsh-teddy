#!/bin/sh

# Ask for the user's name
echo "Enter your name:"
read username

# Define the main directory name
app_dir="submission_reminder_${username}"

# Create folders
mkdir -p "$app_dir"/assets "$app_dir"/config "$app_dir"/modules

# Create reminder.sh
cat > "$app_dir/reminder.sh" << EOF
#!/bin/sh

. ./config/config.env
. ./modules/functions.sh

submissions_file="./assets/submissions.txt"

echo "Assignment: \$ASSIGNMENT"
echo "Days remaining to submit: \$DAYS_REMAINING"
echo "--------------------------------------"

check_submissions "\$submissions_file"
EOF

# Create functions.sh
cat > "$app_dir/modules/functions.sh" << EOF
#!/bin/sh

check_submissions() {
    file=\$1
    echo "Checking submissions in \$file"
    tail -n +2 "\$file" | while IFS=, read student assignment status
    do
        student=\$(echo "\$student" | xargs)
        assignment=\$(echo "\$assignment" | xargs)
        status=\$(echo "\$status" | xargs)
        if [ "\$assignment" = "\$ASSIGNMENT" ] && [ "\$status" = "not submitted" ]; then
            echo "\$student has not submitted the \$ASSIGNMENT assignment."
        fi
    done
}
EOF

# Create config.env
cat > "$app_dir/config/config.env" << EOF
ASSIGNMENT="Shell Navigation"
DAYS_REMAINING=2
EOF

# Create submissions.txt
cat > "$app_dir/assets/submissions.txt" << EOF
student, assignment, submission status
Chinemerem, Shell Navigation, not submitted
Chiagoziem, Git, submitted
Divine, Shell Navigation, not submitted
Anissa, Shell Basics, submitted
Emmanuel, Shell Navigation, not submitted
Grace, Git, submitted
Zawadi, Shell Navigation, submitted
Theo, Shell Navigation, not submitted
Linda, Shell Basics, not submitted
EOF

# Create startup.sh
cat > "$app_dir/startup.sh" << EOF
#!/bin/sh
chmod +x ./reminder.sh ./modules/functions.sh
./reminder.sh
EOF

# Create copilot_shell_script.sh
cat > "$app_dir/copilot_shell_script.sh" << EOF
#!/bin/sh

echo "Enter new assignment name:"
read new_name

sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=\"\$new_name\"/" ./config/config.env

echo "Assignment updated to \$new_name"
echo "Running reminder..."
./startup.sh
EOF

# Make all .sh files executable
find "$app_dir" -type f -name "*.sh" -exec chmod +x {} \;

echo "Setup complete. Your app folder is: $app_dir"
echo "To start the app, run: cd $app_dir && ./startup.sh"
