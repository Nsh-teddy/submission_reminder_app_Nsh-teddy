# Submission Reminder App

This Linux-based application is designed to help students keep track of assignment deadlines. It includes shell scripts that automate the environment setup, manage submission records, and provide assignment reminders through a simple terminal interface.

---

## Overview

This repository contains:

- `create_environment.sh`: A script that sets up the application's working environment.
- `copilot_shell_script.sh`: A script that updates the current assignment name.
- `README.md`: Documentation for setup and usage.

The application allows users to generate a reminder tool that identifies which students have not submitted a given assignment, based on data provided in `submissions.txt`.

---

## Setup Instructions

1. Clone the Repository

```bash
git clone https://github.com/<YourGitHubUsername>/submission_reminder_app_<YourGitHubUsername>.git
cd submission_reminder_app_<YourGitHubUsername>

2. Run the Environment Setup Script

chmod +x create_environment.sh
./create_environment.sh

Prompts for user name.

Creates a directory: submission_reminder_{YourName}.

Inside are structured folders and files:

├── assets/
│   └── submissions.txt
├── config/
│   └── config.env
├── modules/
│   ├── functions.sh
│   └── reminder.sh
└── startup.sh

Adds execute permission to all .sh scripts.

3. Run the Application

Navigate into the generated app folder and start the application:

cd submission_reminder_{YourName}
./startup.sh

Displays:

Assignment name

Days remaining

Students who have not submitted

4. Updatind Assignment Name
To update the assignment name:

chmod +x copilot_shell_script.sh
./copilot_shell_script.sh

Prompts for new assignment name.

Updates config/config.env.

Re-runs startup.sh with updated info.
