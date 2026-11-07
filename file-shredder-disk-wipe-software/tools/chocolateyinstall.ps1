$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.7/fileshredder.exe'
  checksum       = 'c2905efaa1badb3be8b172d5549f68f081d2085f234416a7fffd37fb923e9c09'
  checksumType   = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\fileshredder-chocolatey.exe"
  softwareName   = 'File Shredder - Disk Wipe Software*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
