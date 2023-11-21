Write-Output [System.Environemnt]::NewLine
Write-Output "WELCOME TO HYPERIONDEV'S DATA SCIENCE BOOTCAMP DEVELOPMENT ENVIRONMENT UNINSTALLATION SCRIPT"
Write-Output [System.Environemnt]::NewLine
Write-Output "Please ignore any errors concerning tools already removed"
Write-Output "Press Enter/Return and enter your Windows password whenever prompted to allow uninstallation to proceed"

# Uninstall Git
choco uninstall git
Write-Output "Git has been uninstalled"

# Uninstall Python
(Invoke-WebRequest -URI "https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/requirements.txt").Content > requirements.txt
python -m pip uninstall -r requirements.txt -y
choco uninstall python311
Write-Output "Python has been uninstalled"

# Uninstall Visual Studio Code
choco uninstall vscode
Remove-Item $env:APPDATA\Code
Remove-Item $env:USERPROFILE\.vscode

Write-Output "Visual Studio has been uninstalled"
