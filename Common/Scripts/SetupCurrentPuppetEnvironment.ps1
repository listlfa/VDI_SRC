Param(
  [string]$puppetEnvironmentSourceFolder,
  [string]$puppetEnvironmentSymbolicFolder,
  [string]$puppetEnvironmentName
)

Set-PSDebug -Trace 1

Write-Output $puppetEnvironmentSourceFolder
Write-Output $puppetEnvironmentSymbolicFolder
Write-Output $puppetEnvironmentName

cmd /c mklink /J $puppetEnvironmentSymbolicFolder $puppetEnvironmentSourceFolder

puppet config print environment
puppet config set environment $puppetEnvironmentName
puppet config print environment

