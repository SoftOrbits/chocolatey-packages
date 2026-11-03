$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.4/OstToPst.exe'
  checksum       = '3a698808cf3527fb47953f72e6337aa4f0ec1aa9ab19921524e0fc069ad62051'
  checksumType   = 'sha256'
  softwareName   = 'OST to PST Converter Tool*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
