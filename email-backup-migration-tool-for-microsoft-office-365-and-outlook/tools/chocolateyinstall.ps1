$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.1/Office365Backup.exe'
  checksum       = '515c4806f9276a36ed808c34b732f8f04973ed2983b756f4759da6d35f881dca'
  checksumType   = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\Office365Backup-chocolatey.exe"
  softwareName   = 'Email Backup & Migration Tool for Microsoft Office 365 and Outlook*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
