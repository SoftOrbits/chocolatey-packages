$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.2/OutlookMailMergeSetup.exe'
  checksum       = '70ad82da63bb511baea9bd3b6c258f7d9372092dfe3f9da0fd3890dc8f8e90ad'
  checksumType   = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\OutlookMailMergeSetup-chocolatey.exe"
  softwareName   = 'Mail Merge for Outlook and Excel with Attachments*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
