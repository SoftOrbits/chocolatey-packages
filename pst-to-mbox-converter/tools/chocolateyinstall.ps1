$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.6/PstToMbox.exe'
  checksum       = 'b6ec39ab0a28a7a11fa86da062904a8342c56c400dadde3025006558bf7fb69b'
  checksumType   = 'sha256'
  softwareName   = 'PST to MBOX Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
