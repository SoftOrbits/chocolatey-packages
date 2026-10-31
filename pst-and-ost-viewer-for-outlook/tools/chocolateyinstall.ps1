$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.2/PstViewer.exe'
  checksum       = '2b1eaaf9ddb4c0d5fc656ce3a290980667ffb8979e3bb4f98a2dc9a2b67d7987'
  checksumType   = 'sha256'
  softwareName   = 'PST and OST Viewer for Outlook*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
