$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.2/ZipPassRecovery.exe'
  checksum       = 'e95ead4ae2f4c47b810c8f4eef3f7ec5461291f2c6f2439bbac72328ae65a95b'
  checksumType   = 'sha256'
  softwareName   = 'ZIP Password Recovery*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
