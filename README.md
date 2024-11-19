# Basic-Shell-Scripting.

## Shell scripting is a powerful tool that allows users to automate tasks, manage files, and interact with the operating system. The Bash shell is a widely used shell in the Linux and Unix environments and is known for its power and flexibility.

# 1. Automating System Updates.

Regularly updating system packages is critical for maintaining security and performance. This script automates the update and upgrade process.

### How to Use:

- Copy the script auto_update.sh.
- Make the script executable:
  `chmod +x auto_update.sh`
- Run the script:
  `./auto_update.sh`

# 2. Disk Usage Monitoring Script.

Monitoring disk usage prevents systems from running out of space, which can cause major disruptions. The Scripts checks if any partition exceeds 80% disk usage and prints a warning.

### How to Use:

- Copy the script Diskusage.sh.
- Make the script executable:
  `chmod +x Diskusage.sh.`
- Run the script:
  `./Diskusage.sh.`

You can modify it to send an email alert using **mail**.

# 3. User Account Management Script.

This script automates adding users to the system. Simplifies user account management on Linux systems.

### How to Use:

- Copy the script Useradd.sh.
- Make the script executable:
  `chmod +x Useradd.sh.`
- Run the script:
  `./Useradd.sh <Provide Username>`

### To add Multiple user in a single execution.

- Copy both the script **MultiUser.sh** and **Useradd.sh**.
- Make the script executable:
  `chmod +x MultiUser.sh Useradd.sh.`
- Create the Txt file of usename to add e.g.,abc.txt.
- Run the script:
  `./MultiUser <Provide File>`
