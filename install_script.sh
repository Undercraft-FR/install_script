#!/bin/bash

# Check if the script is being run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi

# Update the package lists
apt update

# Install lftp
apt install -y lftp

# Run lftp command
lftp -e "set ssl:verify-certificate no; open ftp://ns3180340.ip-51-91-214.eu:nXAbCgSvG2@ftpback-rbx3-527.ovh.net:21; cd backup; get 3e9dab49-8265-4c37-8ad8-ee9e3e9893cf.zip; quit"

# Print a message indicating the installation and download are complete
echo "lftp has been successfully installed and file has been downloaded"