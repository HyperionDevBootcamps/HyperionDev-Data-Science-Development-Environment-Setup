# Only run if the tools are not installed yet
# To check that try to print the SDK path
xcode-select -p &> /dev/null
if [ $? -ne 0 ]; then
  echo "Command Line Tools for Xcode not found. Installing from softwareupdate…"
# This temporary file prompts the 'softwareupdate' utility to list the Command Line Tools
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l | grep "\*.*Command Line" | tail -n 1 | sed 's/^[^C]* //')
  softwareupdate -i "$PROD" --verbose;
else
  echo "Command Line Tools for Xcode have been installed."
fi

curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

brew install python
brew install git
brew install --cask visual-studio-code
python -m pip install --user --upgrade pip
python -m pip install --user -r requirements.txt
python -m spacy download en_core_web_sm
python -m spacy download en_core_web_md