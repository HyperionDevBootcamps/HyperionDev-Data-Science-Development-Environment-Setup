Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072

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
Write-Output "Git has been instaleld"

# Install Python
choco install python
(Invoke-WebRequest -URI https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/requirements.txt).Content > requirements.txt
python -m pip install --user -r requirements.txt
python -m spacy download en_core_web_sm
python -m spacy download en_core_web_md
Write-Output "Python has been installed"

# Install Visual Studio Code
choco install vscode
code --install-extension ms-python.python --force
code --install-extension ms-toolsai.jupyter --force
Write-Output "Visual Studio has been installed"