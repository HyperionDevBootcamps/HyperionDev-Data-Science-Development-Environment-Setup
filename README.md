# HyperionDev Data Science Development Environment Setup

This repository provides scripts that set up your development environment for you. 
The operating systems we have provide are:

* macOS
* Windows
* Fedora
* Ubuntu

If you are on other Linux distributions, we welcome your contributions as they will benefit other students.

Only operating system versions supported by their
respective vendors are supported by the scripts.

If your computer is not your personal computer,
you will need to ensure that you have administrator
access on Windows or superuser access on macOS, Fedora
or Ubuntu.

## Instructions

Clone this repository to your local file system. Navigate to the newly created folder and open the terminal there.

From your terminal open in this repository, you can 
run the following commands for the respective 
operating systems. You can simply copy and paste
them into your terminal.

### macOS (Terminal)

```.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/macos_ds.sh)"
```

### Windows (Powershell run as an Administrator)

```.ps1
.\windows_ds.ps1
```

You might need to activate permission to run scripts
on your computer if it was locked down.

### Fedora (Terminal)

```.sh
bash ./fedora_ds.sh
```

### Ubuntu (Terminal)

```.sh
bash ./ubuntu_ds.sh
```