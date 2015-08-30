BP01

VDI Platform - On Premises - First for B - Full Puppet Environment

#Setup Steps

##Initiation

##Install Applications
1. Github
  1. https://help.github.com/articles/set-up-git/
2. Puppet
  1. https://downloads.puppetlabs.com/windows/

###Confirm Requirements
1. Puppet is _old_ enough, eg <=3.6, by `puppet -V`
  1. This is a requirement of jriviere-windows_ad
  
##Download Files
 1. Clone https://github.com/listlfa/VDI_SRC_B-P to C:\

##Setup Applications

### Puppet

#### Config

*TO OVERHAUL*

1. SCRIPT Confirm modulepath has "C:/ProgramData/PuppetLabs/code/environments/production/modules" by `puppet config print modulepath`
  1. Fix with something like `puppet config set modulepath "C:/ProgramData/PuppetLabs/puppet/etc/modules;C:/usr/share/puppet/modules;C:/ProgramData/PuppetLabs/code/environments/production/modules"`
2. SCRIPT Confirm ordering is "manifest" by `puppet config print ordering`
  1. Fix with `puppet config set ordering manifest`
  2. This is a requirement of jriviere-windows_ad
3. SCRIPT Confirm environment name matches this git repo by `puppet config print environment`
  1. Fix with `puppet config set environment <repo name here, eg BP01>`
4. SCRIPT Confirm modulepath also has your environment, eg "C:/ProgramData/PuppetLabs/code/environments/<repo name here, eg BP01>/modules" by `puppet config print modulepath`
  1. Fix with something like `puppet config set modulepath "C:/ProgramData/PuppetLabs/puppet/etc/modules;C:/usr/share/puppet/modules;C:/ProgramData/PuppetLabs/code/environments/<repo name here, eg BP01>/modules"`

#### Environment
1. Setup this project as the one in development
  1. `cd  C:\VDI_SRC_B-P\`

  2.

    ```
    .\Common\Scripts\SetupCurrentPuppetEnvironment.ps1 `
    -puppetEnvironmentSourceFolder '"C:\VDI_SRC_B-P\BP01\Puppet\BP01"' `
    -puppetEnvironmentSymbolicFolder '"C:\ProgramData\PuppetLabs\code\environments\BP01"' `
    -puppetEnvironmentName BP01
```

#### 3rd party Modules
1. Install AD module (includes dependancies)
  1. `puppet module install jriviere-windows_ad`
