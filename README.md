# Chocolatey Setup Script

This PowerShell script automates the installation of essential development tools and utilities using [Chocolatey](https://chocolatey.org/) on Windows. It simplifies the setup process by installing various packages, including development environments, tools, and utilities.

## Requirements

Before running the script, you need to ensure that PowerShell allows script execution on your system. You can enable this by running the following command in an elevated (administrator) PowerShell window:

```powershell
Set-ExecutionPolicy Unrestricted -Scope Process
```

This temporarily allows scripts to run during your session. The script will install tools like git, python, golang, wireshark, and more.

Chocolatey is a free and open-source package manager for Windows, designed to simplify software installation and dependency management. With Chocolatey, you can install and manage multiple tools and applications from a single source, avoiding the hassle of manually downloading and installing software from various websites.

### Key Features
- Centralized software installation and updates
- Simplifies dependency management
- Compatible with automation tools like:
  - **PowerShell**
  - **Ansible**
  - Other configuration management solutions

### Why Use Chocolatey?
Using Chocolatey can save time and effort by automating the setup of tools and scripts needed for your workflow. It's especially useful for developers and system administrators who need a streamlined approach to managing software installations.

### Installation
To install Chocolatey, run the following command in an **elevated** PowerShell terminal:

```powershell

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

## Run the Script: 

Clone this Repository: Clone the repository to your local machine or download the script.

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

If any package fails, check the logs in C:\ProgramData\chocolatey\logs\chocolatey.log for more details.
