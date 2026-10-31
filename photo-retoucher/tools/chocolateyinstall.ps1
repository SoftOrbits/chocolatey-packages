$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://download.softorbits.com/filesNew/v/14.2/SORetoucher.exe'
  checksum64     = '3ef4c20f9dfe2359ee6fccae264f494e12918bc8cd35ba289c5bb7c8b7201b93'
  checksumType64 = 'sha256'
  softwareName   = 'Photo Retoucher*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
