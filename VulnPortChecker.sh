#!/bin/bash

# Check for root privileges
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 
   exit 1
fi

# Update package lists
echo "Updating package lists..."
apt-get update -y

# Install security updates
echo "Installing security updates..."
apt-get upgrade -y

# Install unattended-upgrades for automatic security updates
echo "Installing unattended-upgrades..."
apt-get install -y unattended-upgrades
dpkg-reconfigure --priority=low unattended-upgrades

# Install Lynis for system auditing
echo "Installing Lynis..."
apt-get install -y lynis

# Perform system audit with Lynis
echo "Performing system audit with Lynis..."
lynis audit system | tee /var/log/lynis_audit.log

# Install chkrootkit for rootkit detection
echo "Installing chkrootkit..."
apt-get install -y chkrootkit

# Run chkrootkit for rootkit detection
echo "Running chkrootkit..."
chkrootkit | tee /var/log/chkrootkit_scan.log

# Install rkhunter for rootkit detection
echo "Installing rkhunter..."
apt-get install -y rkhunter

# Update rkhunter data files
echo "Updating rkhunter data files..."
rkhunter --update

# Run rkhunter for rootkit detection
echo "Running rkhunter..."
rkhunter --checkall --report-warnings-only | tee /var/log/rkhunter_scan.log

# Install clamav for antivirus scanning
echo "Installing ClamAV..."
apt-get install -y clamav clamav-daemon

# Update ClamAV virus database
echo "Updating ClamAV database..."
freshclam

# Run ClamAV scan
echo "Running ClamAV scan..."
clamscan -r / | tee /var/log/clamav_scan.log

# Check for open ports
echo "Checking for open ports..."
netstat -tuln | tee /var/log/open_ports.log

echo "Vulnerability testing and port checking completed. Check the logs in /var/log/ for detailed results."
