$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://download.softorbits.com/filesNew/v/1.0/AIPhotoCulling.exe'
  checksum64     = 'da20cdd89c9c03df4212bce7d62b96104b95d1a36daae06a4b45456a46e3e41a'
  checksumType64 = 'sha256'
  softwareName   = 'AI Photo Culling*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
