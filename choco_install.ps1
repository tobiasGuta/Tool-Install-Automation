# Choco build script

# Display a starting message
Write-Host "*** Initial app install for core tools and packages. ***"

# Enable Chocolatey feature to avoid confirmation prompts
Write-Host "*** Configuring chocolatey ***"
choco feature enable --name allowGlobalConfirmation

# Begin installation and show progress message
Write-Host "*** Beginning install, go grab a coffee. ***"

# Install the core list of packages
$packages = @(
    "wsl2",
    "python",
    "git",
    "vscode",
    "openssh",
    "nmap",
    "wireshark",
    "burp-suite-free-edition",
    "heidisql",
    "sysinternals",
    "putty",
    "golang",
    "neo4j-community",
    "openjdk",
    "7zip",
    "notepadplusplus.install",
    "libreoffice-fresh",
    "curl",
    "gimp",
    "ghidra",
    "cutter",
    "hxd"
)

# Loop through packages and install them
foreach ($pkg in $packages) {
    Write-Host "Installing $pkg..."
    choco install --name $pkg -y
}

# Check if installation was successful for each package
$failedPackages = @()
foreach ($pkg in $packages) {
    if (-not (choco list --local-only | Select-String -Pattern $pkg)) {
        $failedPackages += $pkg
    }
}

# Display failed installations if any
if ($failedPackages.Count -gt 0) {
    Write-Host "*** The following packages failed to install: $($failedPackages -join ', ') ***"
} else {
    Write-Host "*** All packages installed successfully! ***"
}

# Disable global confirmation policy after installation
Write-Host "*** Build complete, restoring GlobalConfirmation policy. ***"
choco feature disable --name allowGlobalConfirmation
