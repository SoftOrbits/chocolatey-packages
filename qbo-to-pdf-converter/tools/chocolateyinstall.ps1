$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.0/QboToPdf.exe'
  checksum       = '2768e91dcd065369bc405f6c6b63bb20ba21bd247dcec902a4f02b31811da029'
  checksumType   = 'sha256'
  softwareName   = 'QBO to PDF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
