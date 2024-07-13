# VulnPortChecker

VulnPortChecker is a comprehensive vulnerability and port checking script for Ubuntu systems. This script helps you identify security vulnerabilities, detect rootkits, and check for open ports on your system.

## Features

- Updates package lists and installs security updates
- Installs and configures unattended-upgrades for automatic security updates
- Performs a security audit with Lynis
- Detects rootkits using chkrootkit and rkhunter
- Scans for viruses using ClamAV
- Checks for open ports using netstat

## Requirements

- Ubuntu operating system
- Root privileges

## Installation

1. Clone the repository to your local machine:

    ```bash
    git clone https://github.com/fobaty/VulnPortChecker.git
    cd VulnPortChecker
    ```

2. Make the script executable:

    ```bash
    chmod +x VulnPortChecker.sh
    ```

## Usage


Run the script with root privileges to perform the vulnerability and port check:

```bash
sudo ./VulnPortChecker.sh
 ```
## Results
The results of each step will be logged in the /var/log/ directory:

- Lynis audit: /var/log/lynis_audit.log
- chkrootkit scan: /var/log/chkrootkit_scan.log
- rkhunter scan: /var/log/rkhunter_scan.log
- ClamAV scan: /var/log/clamav_scan.log
- Open ports: /var/log/open_ports.log


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.




