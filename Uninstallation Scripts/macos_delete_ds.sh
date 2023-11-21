echo -e "\nWELCOME TO HYPERIONDEV'S DATA SCIENCE BOOTCAMP DEVELOPMENT ENVIRONMENT UNINSTALLATION SCRIPT\n"
echo "Please ignore any errors concerning tools already installed"
echo "Please note that characters won't be displayed in the terminal as you enter your password when prompted for security purposes"
echo "Press Enter/Return and enter your Mac password whenever prompted to allow uninstallation to proceed"

# Uninstall Git
brew uninstall git
echo "Git has been removed"

# Uninstall non-system Python
brew uninstall python@3.11
echo "Python has been uninstalled"

# Uninstall all Python packages
curl https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/requirements.txt > requirements.txt
python3 -m pip uninstall -r requirements.txt
echo "All the previous Python packages have been removed"

# Uninstall Visual Studio Code
brew uninstall --cask visual-studio-code
sudo rm -rf $HOME/Library/Application\ Support/Code
sudo rm -rf $HOME/.vscode

echo "Visual Studio Code has been uninstalled"

echo "All the previous software needed for your bootcamp have been removed"
echo "Submit a query via your HyperionDev dashboard if you run into any issues"
