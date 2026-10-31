$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/2.15/PdfToCsv.exe'
  checksum       = 'a015426462371ab839e6d6ff05e64985ebd960bedcd545967a56222dffc7e57d'
  checksumType   = 'sha256'
  softwareName   = 'PDF to CSV Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
