$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://download.softorbits.com/filesNew/v/1.1/FocusStackingSoftware.exe'
  checksum64     = 'f9ddb2d3d33778ca9e91365aac9a48bb902bdaee9b0ea0dd1422bc81234f36ba'
  checksumType64 = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\FocusStackingSoftware-chocolatey.exe"
  softwareName   = 'Focus Stacking Software*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
