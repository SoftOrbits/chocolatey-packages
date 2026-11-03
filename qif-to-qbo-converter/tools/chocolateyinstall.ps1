$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.1/QifToQbo.exe'
  checksum       = '518c643e1ff2585e405ad133364ab981d62e0f11aac33919a74c0bbc3a918525'
  checksumType   = 'sha256'
  softwareName   = 'QIF to QBO Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
