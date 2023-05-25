Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install python
choco install git
choco install vscode
python -m pip install --user -r requirements.txt
python -m spacy download en_core_web_sm
python -m spacy download en_core_web_md