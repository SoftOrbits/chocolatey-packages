$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/14.1/Windows10PrivacyProtector-Setup.exe'
  checksum       = 'ee686106e952a4f6eaf65d5c8733537363721a0f6bcb66f0253ed3d4b39c9989'
  checksumType   = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\Windows10PrivacyProtector-Setup-chocolatey.exe"
  softwareName   = 'Privacy Protector for Windows 11*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
