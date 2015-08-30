Param(

)

Set-PSDebug -Trace 1

puppet config set modulepath "C:/ProgramData/PuppetLabs/puppet/etc/modules;C:/usr/share/puppet/modules;C:/ProgramData/PuppetLabs/code/environments/production/modules;C:/ProgramData/PuppetLabs/code/environments/BP01/modules"

#This is a requirement of jriviere-windows_ad
puppet config set ordering manifest