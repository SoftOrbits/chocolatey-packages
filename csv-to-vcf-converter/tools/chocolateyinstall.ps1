$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.0/CsvToVcf.exe'
  checksum       = '5f7b22b245651107aa87d598222f8cc96f7fd4ac47a0b14ce827a7922c77faa6'
  checksumType   = 'sha256'
  softwareName   = 'CSV to VCF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
