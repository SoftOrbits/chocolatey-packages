$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/14.2/HeicToJpg.exe'
  checksum       = 'c467b4626582fabf365011342bae8c03caf0bf0f802410c3157ed40f3a278a19'
  checksumType   = 'sha256'
  softwareName   = 'Heic to Jpg Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
