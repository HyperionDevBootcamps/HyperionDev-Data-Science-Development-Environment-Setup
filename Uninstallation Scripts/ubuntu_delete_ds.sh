echo -e "\nWELCOME TO HYPERIONDEV'S DATA SCIENCE BOOTCAMP DEVELOPMENT ENVIRONMENT UNINSTALLATION SCRIPT\n"
echo "Please ignore any errors concerning tools already installed"
echo "Please note that characters won't be displayed in the terminal as you enter your password when prompted for security purposes"
echo "Press Enter/Return and enter your Linux password whenever prompted to allow uninstallation to proceed"

# Uninstall all Python packages
curl https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/requirements.txt > requirements.txt
python3 -m pip uninstall -r requirements.txt
echo "All the previous Python packages have been removed"

# Uninstall Visual Studio Code
rm -f packages.microsoft.gpg
sudo apt-get remove apt-transport-https
sudo apt-get remove code

rm -f $HOME/.config/Code
rm -f ~/.vscode

echo "Visual Studio Code has been uninstalled"

echo "All the software needed for your bootcamp are uninstalled"
echo "Submit a query via your HyperionDev dashboard if you run into any issues"
