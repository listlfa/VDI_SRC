BP01

VDI Platform - On Premises - First for B - Full Puppet Environment

#Developer Setup Steps

##Initiation
Note : Command lines need to be run in Powershell



##Download and Install Applications
(This installs an older Puppet version. This is a requirement of jriviere-windows_ad)

```powershell
cd  C:\VDI_SRC_B-P\BP01\Scripts\
```

```powershell
.\RequiredApplications.ps1
```



##Confirm Requirements
N/A



##Project

###Download
Clone https://github.com/listlfa/VDI_SRC_B-P to C:\

#### Setup this project as the one in development
```powershell
cd  C:\VDI_SRC_B-P\
```

```powershell
.\Common\Scripts\SetupCurrentPuppetEnvironment.ps1 `
-puppetEnvironmentSourceFolder '"C:\VDI_SRC_B-P\BP01\Puppet\BP01"' `
-puppetEnvironmentSymbolicFolder '"C:\ProgramData\PuppetLabs\code\environments\BP01"' `
-puppetEnvironmentName BP01
```



##Puppet

#### Config and 3rd party Modules
```powershell
cd  C:\VDI_SRC_B-P\
```

```powershell
.\BP01\Scripts\PuppetConfig.ps1
```

