# HyperionDev Data Science Development Environment Setup

This repository provides scripts that set up your development environment for you. 
The operating systems we have provided for are:

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

On Windows, please ensure you have administrator access to Powershell. On macOS, Fedora and Ubuntu, you can simply
open your terminal.

### Find your terminal
#### macOS
![](https://github.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/blob/master/mac_terminal.gif)

#### Windows
![](https://github.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/blob/master/windows_admin_powershell.gif)

#### Linux
![](https://github.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/blob/master/linux_terminal.gif)

Once your terminal is open, please navigate to the command relevant to your operating system in the Commands section. Click the copy icon that pops up on the right of the command. This will copy the full command you need to run to set up your computer for the whole bootcamp.

Once you have copied the command, you can simply paste it into the terminal and press enter. Please follow all the
ensuing instructions in your terminal, enter your computer password as necessary, and press Enter/Return when prompted.

Should you run into issues, please submit a query via your dashboard.

### Commands

#### macOS (Terminal)

```.sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/macos_ds.sh)"
```

#### Windows (Powershell run as an Administrator)

```.ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression (Invoke-WebRequest -URI "https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/windows_ds.ps1" -UseBasicParsing).Content
```

#### Fedora (Terminal)

```.sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/fedora_ds.sh)"
```

#### Ubuntu (Terminal)

```.sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/HyperionDevBootcamps/HyperionDev-Data-Science-Development-Environment-Setup/master/ubuntu_ds.sh)"
```
