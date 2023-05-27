echo "WELCOME TO HYPERIONDEV'S DATA SCIENCE BOOTCAMP DEVELOPMENT ENVIRONMENT SETUP SCRIPT"
echo "Please ignore any errors concerning tools already installed and enter your password and accept when prompted"

# Only run if the tools are not installed yet
# To check that try to print the SDK path
xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  echo "Command Line Tools for Xcode not found. Installing from softwareupdate…"
# This temporary file prompts the 'softwareupdate' utility to list the Command Line Tools
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l | grep "\*.*Command Line" | tail -n 1 | sed 's/^[^C]* //')
  softwareupdate -i "$PROD" --quiet;
else
  echo "Command Line Tools for Xcode have been installed"
fi

# Install Homebrew
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "Homebrew has been installed"

# Install non-system Python
brew install python
echo "alias python='python3'" >> ~/.zprofile
echo "alias py='python3'" >> ~/.zprofile
echo "alias python='python3'" >> ~/.bashprofile
echo "alias py='python3'" >> ~/.bashprofile
source ~/.zprofile
echo "Python has been installed"

# Install Git
brew install git
echo "Git has been installed"

# Install all Python packages
mkdir pysetup
cd pysetup
curl https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/requirements.txt > requirements.txt
python -m pip install --user --upgrade pip
python -m pip install --user -r requirements.txt
cd ..
rm -rf pysetup
python -m spacy download en_core_web_sm
python -m spacy download en_core_web_md
echo "All the your Python packages are set up"


# Install Visual Studio Code
brew install --cask visual-studio-code
code --install-extension ms-python.python --force
code --install-extension ms-toolsai.jupyter --force
echo "Visual Studio Code has been installed"

echo "All the software needed for your bootcamp are installed"
echo "Submit a query via your HyperionDev dashboard if you run into any issues"