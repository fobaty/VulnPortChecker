# VulnPortChecker
A comprehensive vulnerability and port checking script for Ubuntu

Explanation:
Root Privileges Check: Ensures the script is run with root privileges.
Update Package Lists: Updates the list of available packages.
Install Security Updates: Installs any available security updates.
Install unattended-upgrades: Ensures that security updates are installed automatically.
Install and Run Lynis: Installs and runs Lynis, a comprehensive security auditing tool.
Install and Run chkrootkit: Installs and runs chkrootkit to detect rootkits.
Install and Run rkhunter: Installs and runs rkhunter for additional rootkit detection.
Install and Run ClamAV: Installs and runs ClamAV for antivirus scanning.
Check Open Ports: Uses netstat to list open ports and logs the output.
