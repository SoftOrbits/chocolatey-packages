$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/16.0/DigitalPhotoSuite.exe'
  checksum       = '71b076458686e6ab22bc7d285c8affebe48d8e8ed659a1b9ae0c72ac5db8d87a'
  checksumType   = 'sha256'
  softwareName   = 'SoftOrbits Digital Photo Suite*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
