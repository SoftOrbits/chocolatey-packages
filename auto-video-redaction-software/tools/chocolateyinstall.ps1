$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.14/AutoVideoRedaction.exe'
  checksum       = '1038ca40280777d7e4317551608d218592025100437449742bb43f5dbe485f1d'
  checksumType   = 'sha256'
  softwareName   = 'Auto Video Redaction Software*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
