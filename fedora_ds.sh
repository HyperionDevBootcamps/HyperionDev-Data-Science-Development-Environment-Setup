echo -e "\nWELCOME TO HYPERIONDEV'S DATA SCIENCE BOOTCAMP DEVELOPMENT ENVIRONMENT SETUP SCRIPT\n"
echo "Please ignore any errors concerning tools already installed"
echo "Please note that characters won't be displayed in the terminal as you enter your password when prompted for security purposes"
echo "Press Enter/Return and enter your Linux password whenever prompted to allow installation to proceed"

# Install all Python packages
mkdir pysetup
cd pysetup
curl https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/requirements.txt > requirements.txt
python3 -m pip install --user --upgrade pip
python3 -m pip install --user -r requirements.txt
cd ..
rm -rf pysetup
python3 -m spacy download en_core_web_sm
python3 -m spacy download en_core_web_md
echo "All the your Python packages are set up"

# Install Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
sudo dnf install code
code --install-extension ms-python.python --force
code --install-extension ms-toolsai.jupyter --force
echo "Visual Studio Code has been installed"

echo "All the software needed for your bootcamp are installed"
echo "Submit a query via your HyperionDev dashboard if you run into any issues"
