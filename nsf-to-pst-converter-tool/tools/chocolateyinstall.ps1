$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.5/NsfToPst.exe'
  checksum       = '0222a3195d14eab44f91fdc9785f50e402c7e25216af147009c1dd68288778d9'
  checksumType   = 'sha256'
  softwareName   = 'NSF to PST Converter Tool*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
