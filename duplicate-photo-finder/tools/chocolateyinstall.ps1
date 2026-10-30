$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.1/DuplicatePhotoFinder.exe'
  checksum       = 'fa776eff289656750d6bafebfcdfcbf63af2bcb5d1b8f50dfcbaa91882596ebf'
  checksumType   = 'sha256'
  softwareName   = 'Duplicate Photo Finder*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
