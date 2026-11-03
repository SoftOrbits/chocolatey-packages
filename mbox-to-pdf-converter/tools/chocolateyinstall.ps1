$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.4/MboxToPdf.exe'
  checksum       = 'cba059f6818bdd64f11156a62734759dd72d80e566df53b4ea8d0a0f41a2a297'
  checksumType   = 'sha256'
  softwareName   = 'MBOX to PDF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
