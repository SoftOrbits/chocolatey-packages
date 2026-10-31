$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.3/MsgToPdf.exe'
  checksum       = '4a75189eb4a7462b0edb425439da431e811bb3d6282baf5e1dea1a67f33ae929'
  checksumType   = 'sha256'
  softwareName   = 'MSG to PDF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
