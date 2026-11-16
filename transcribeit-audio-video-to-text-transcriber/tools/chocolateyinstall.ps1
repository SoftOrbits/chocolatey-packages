$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.0.0/AudioVideoToText.exe'
  checksum       = 'd4ac92d0214e035222c0881fa6161b8a8509fd1f04e26365f27ed214fcd2b0c6'
  checksumType   = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\AudioVideoToText-chocolatey.exe"
  softwareName   = 'TranscribeIt - Audio & Video to Text Transcriber*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
