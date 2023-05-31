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
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code
core --install-extension ms-python.python --force
code --install-extension ms-toolsai.jupyter --force
echo "Visual Studio Code has been installed"

echo "All the software needed for your bootcamp are installed"
echo "Submit a query via your HyperionDev dashboard if you run into any issues"
