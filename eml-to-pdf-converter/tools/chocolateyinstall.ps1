$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.7/EmlToPdf.exe'
  checksum       = '7a42808097e6a09cf25563883fb3baed9559f1f3d8cea5e70f7105da12bf69a0'
  checksumType   = 'sha256'
  softwareName   = 'EML to PDF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
