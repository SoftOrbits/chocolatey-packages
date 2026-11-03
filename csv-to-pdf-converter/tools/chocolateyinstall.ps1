$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.0/CsvToPdf.exe'
  checksum       = '2ae2e122d161e216338f7856107d91d3a220f2a286bd60c83ea96f92bcb1b8e5'
  checksumType   = 'sha256'
  softwareName   = 'CSV to PDF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
