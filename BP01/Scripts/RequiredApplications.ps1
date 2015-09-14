
Invoke-WebRequest https://downloads.puppetlabs.com/windows/puppet-3.5.1.msi -OutFile ..\Files-Apps\puppet-3.5.1.msi
Invoke-WebRequest https://github-windows.s3.amazonaws.com/GitHubSetup.exe -OutFile ..\Files-Apps\GitHubSetup.exe
Invoke-WebRequest https://notepad-plus-plus.org/repository/6.x/6.8.3/npp.6.8.3.Installer.exe -OutFile ..\Files-Apps\npp.6.8.3.Installer.exe

..\Files-Apps\puppet-3.5.1.msi
..\Files-Apps\GitHubSetup.exe
..\Files-Apps\npp.6.8.3.Installer.exe
