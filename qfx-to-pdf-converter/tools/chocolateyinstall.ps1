$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.0/QfxToPdf.exe'
  checksum       = '04d35594a62b7b653b73a0148119e2fb14dbaf12c7087fdf65009becaa909e2e'
  checksumType   = 'sha256'
  softwareName   = 'QFX to PDF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
