$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.3/PstToPdf.exe'
  checksum       = '9381da3d8fc9d5c14382a26a69cafa4074958970b08b74b19c8cba3b2d7202b8'
  checksumType   = 'sha256'
  softwareName   = 'PST to PDF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
