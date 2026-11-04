$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.8/HtmlToPdf.exe'
  checksum       = 'b2ae7bb27e6f1239aa0f13157d349ef590cc55dcaf15d12f19f16542d3325db7'
  checksumType   = 'sha256'
  softwareName   = 'Batch HTML to PDF Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
