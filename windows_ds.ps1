Write-Output [System.Environemnt]::NewLine
Write-Output "WELCOME TO HYPERIONDEV'S DATA SCIENCE BOOTCAMP DEVELOPMENT ENVIRONMENT SETUP SCRIPT"
Write-Output [System.Environemnt]::NewLine
Write-Output "Please ignore any errors concerning tools already installed"
Write-Output "Press Enter/Return and enter your Windows password whenever prompted to allow installation to proceed"

# Install Chocolatey
Invoke-Expression (Invoke-WebRequest -URI 'https://community.chocolatey.org/install.ps1').Content
Write-Output "Chocolatey has been installed"

# Install Git
choco install git
Write-Output "Git has been installed"

# Install Python
Remove-Item $env:USERPROFILE\AppData\Local\Microsoft\WindowsApps\python*.exe # Disable Windows Store version
choco install python311
New-Item -Name "pysetup" -ItemType "directory"
Set-Location "pysetup"
(Invoke-WebRequest -URI "https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/requirements.txt").Content > requirements.txt
python -m pip install --user -r requirements.txt
Set-Location ".."
python -m spacy download en_core_web_sm
python -m spacy download en_core_web_md
Write-Output "Python has been installed"

# Install Visual Studio Code
choco install vscode
code --install-extension ms-python.python --force
code --install-extension ms-toolsai.jupyter --force
Write-Output "Visual Studio has been installed"
