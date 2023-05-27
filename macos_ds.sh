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
  echo "Command Line Tools for Xcode have been installed."
fi

# Install Homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh &> /dev/null
echo "Homebrew has been installed"

# Install non-system Python
brew install python
echo "alias python='python3'" >> ~/.zprofile
echo "alias py='python3'" >> ~/.zprofile
source ~/.zprofile

# Install Git
brew install git

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install all Python packages
python -m pip install --user --upgrade pip
python -m pip install --user -r requirements.txt

# Download spaCy models
python -m spacy download en_core_web_sm
python -m spacy download en_core_web_md
