$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/4.0/pdsetup.exe'
  checksum       = '673b269409281f34d10a02f780e8d4d8563401d9aa04e0ba8c40db587c5e6fed'
  checksumType   = 'sha256'
  softwareName   = 'Picture Doctor*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
