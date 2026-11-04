$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/4.8/flashrecovery.exe'
  checksum       = '3f10175d59b2518e9b51a492581b745b20c87b9b281d543f717414809e6d8e97'
  checksumType   = 'sha256'
  softwareName   = 'Flash Drive Recovery*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
