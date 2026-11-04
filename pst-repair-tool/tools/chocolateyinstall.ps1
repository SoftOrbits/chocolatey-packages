$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.6/PstRepairTool.exe'
  checksum       = '0f8d87db5c6727f50a944b72cba4baaeddb9d34288dbc3432329d6700b037495'
  checksumType   = 'sha256'
  softwareName   = 'PST Repair Tool*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
