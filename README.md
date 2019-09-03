# dev_env
Repository for managing development environment settings

## Windows 10 Settings
1. cmd.exe >> @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
2. terminal >> choco install -y git
3. terminal >> choco install -y python
3. terminal >> git clone https://github.com/gongsh93/dev\_env.git

Other env files
* Windows terminal setting: C:\\Users\\{username}\\AppData\\Local\\Packages\\Microsoft.WindowsTerminal\_{key}\\LocalState
