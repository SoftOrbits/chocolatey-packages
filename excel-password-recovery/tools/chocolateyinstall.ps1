$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.2/ExcelPassRecovery.exe'
  checksum       = 'f71f26c8323e3e17c1eaf9514895dfb3b0379ccc713d733a4f11551b604dea4e'
  checksumType   = 'sha256'
  softwareName   = 'Excel Password Recovery*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
