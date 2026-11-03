$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/4.5/ssdrecovery.exe'
  checksum       = '4c39bcdf5416551a4ad6b6a6e49f6f8be71d8b206d42b80e02481e98b1aa8e88'
  checksumType   = 'sha256'
  softwareName   = 'Corrupted SSD Recovery Tool*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
