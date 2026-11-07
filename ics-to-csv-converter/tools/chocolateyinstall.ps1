$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.0/IcsToCsv.exe'
  checksum       = 'c59ea5de6d6acfd82a2e60498a6c8e41dfbc66a0348e2fea93f29bdd97b2f5b5'
  checksumType   = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\IcsToCsv-chocolatey.exe"
  softwareName   = 'ICS to CSV Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
