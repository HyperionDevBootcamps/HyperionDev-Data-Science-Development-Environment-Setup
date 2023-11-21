echo -e "\nWELCOME TO HYPERIONDEV'S DATA SCIENCE BOOTCAMP DEVELOPMENT ENVIRONMENT SETUP SCRIPT\n"
echo "Please ignore any errors concerning tools already uninstalled"
echo "Please note that characters won't be displayed in the terminal as you enter your password when prompted for security purposes"
echo "Press Enter/Return and enter your Linux password whenever prompted to allow installation to proceed"

# Uninstall all Python packages
curl https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/requirements.txt > requirements.txt
python3 -m pip uninstall -r requirements.txt -y
echo "All the previous Python packages have been removed"

# Uninstall Visual Studio Code
sudo rpm -e code --allmatches
sudo dnf remove code

rm -rf $HOME/.config/Code 
rm -rf ~/.vscode

echo "Visual Studio Code has been uninstalled"

echo "All the software needed for your bootcamp have been removed"
echo "Submit a query via your HyperionDev dashboard if you run into any issues"