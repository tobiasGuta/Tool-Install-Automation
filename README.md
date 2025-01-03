# Chocolatey Setup Script

This PowerShell script automates the installation of essential development tools and utilities using [Chocolatey](https://chocolatey.org/) on Windows. It simplifies the setup process by installing various packages, including development environments, tools, and utilities.

## Requirements

Before running the script, you need to ensure that PowerShell allows script execution on your system. You can enable this by running the following command in an elevated (administrator) PowerShell window:

```powershell
Set-ExecutionPolicy Unrestricted -Scope Process
```

This temporarily allows scripts to run during your session. The script will install tools like git, python, golang, wireshark, and more.

## Installation
Install Chocolatey: If you don’t have Chocolatey installed, follow the installation instructions from the Chocolatey website.

Clone this Repository: Clone the repository to your local machine or download the script.

## Run the Script: 

Open PowerShell as an administrator, navigate to the folder where the script is located, and run the script:

```powershell
.\choco_install.ps1
```

The script will install the following tools:

wsl2
python
git
vscode
openssh
openvpn
nmap (includes ncat)
wireshark
burp-suite-free-edition
heidisql
sysinternals
putty
golang
neo4j-community
openjdk

