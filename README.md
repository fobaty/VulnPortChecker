# VulnPortChecker
A comprehensive vulnerability and port checking script for Ubuntu

<br>Explanation:
<br>Root Privileges Check: Ensures the script is run with root privileges.
<br>Update Package Lists: Updates the list of available packages.
<br>Install Security Updates: Installs any available security updates.
<br>Install unattended-upgrades: Ensures that security updates are installed automatically.
<br>Install and Run Lynis: Installs and runs Lynis, a comprehensive security auditing tool.
<br>Install and Run chkrootkit: Installs and runs chkrootkit to detect rootkits.
Install and Run rkhunter: Installs and runs rkhunter for additional rootkit detection.
<br>Install and Run ClamAV: Installs and runs ClamAV for antivirus scanning.
<br>Check Open Ports: Uses netstat to list open ports and logs the output.
