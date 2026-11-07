$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.4/SplitPST.exe'
  checksum       = 'c3221ed0edb80a92ac30939a0680a7ed0414b39f1f1bc55d7a76662356826521'
  checksumType   = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\SplitPST-chocolatey.exe"
  softwareName   = 'Split PST File*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
