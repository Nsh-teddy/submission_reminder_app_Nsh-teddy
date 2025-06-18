
# Submission Reminder App

This Linux-based application helps students keep track of assignment deadlines. It includes shell scripts that automate environment setup, manage submission records, and provide assignment reminders through a simple terminal interface.

---

## Overview

This repository contains:

- `create_environment.sh`: Script that sets up the application's working environment.
- `copilot_shell_script.sh`: Script that updates the current assignment name.
- `README.md`: Documentation for setup and usage.

The application identifies students who have not submitted a given assignment, based on the data in `submissions.txt`.

---

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/<YourGitHubUsername>/submission_reminder_app_<YourGitHubUsername>.git
cd submission_reminder_app_<YourGitHubUsername>

2. Run the Environment Setup Script

chmod +x create_environment.sh
./create_environment.sh

You will be prompted to enter your name.

A directory named submission_reminder_{YourName} will be created.

Inside, the folder structure will be:

submission_reminder_{YourName}/
├── assets/
│   └── submissions.txt
├── config/
│   └── config.env
├── modules/
│   └── functions.sh
├── reminder.sh
├── startup.sh
└── copilot_shell_script.sh

All .sh files will be automatically made executable.

3. Run the Application
Navigate into the app folder and run:

cd submission_reminder_{YourName}
./startup.sh

This will:

-Read the current assignment name from config.env

-Display the days remaining

-List students who have not submitted that assignment

4. Update the Assignment Name
To update the current assignment name:

chmod +x copilot_shell_script.sh
./copilot_shell_script.sh

-Prompts you to enter a new assignment name.

-Updates the assignment in config/config.env.

-Automatically re-runs startup.sh with the updated info.

Author
Nshimyumurwa Mary Therese
GitHub: @Nsh-teddy
