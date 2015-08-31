BP01

VDI Platform - On Premises - First for B - Full Puppet Environment

#Developer Setup Steps

##Initiation

##Install Applications

1.

 `cd  C:\VDI_SRC_B-P\BP01\Scripts\`
 
2.

`.\RequiredApplications.ps1`

###Confirm Requirements
1. Puppet is _old_ enough, eg <=3.6, by `puppet -V`
  1. This is a requirement of jriviere-windows_ad
  
##Download Files
 1. Clone https://github.com/listlfa/VDI_SRC_B-P to C:\

##Setup Applications

### Puppet

#### Environment
Setup this project as the one in development

1.

 `cd  C:\VDI_SRC_B-P\`

2.

```
.\Common\Scripts\SetupCurrentPuppetEnvironment.ps1 `
-puppetEnvironmentSourceFolder '"C:\VDI_SRC_B-P\BP01\Puppet\BP01"' `
-puppetEnvironmentSymbolicFolder '"C:\ProgramData\PuppetLabs\code\environments\BP01"' `
-puppetEnvironmentName BP01
```

#### Config

1.

 `cd  C:\VDI_SRC_B-P\`
 
2.

`.\BP01\Scripts\PuppetConfig.ps1`

#### 3rd party Modules
1. Install AD module (includes dependancies)
  1. `puppet module install jriviere-windows_ad`
