$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.2/PdfPassRecovery.exe'
  checksum       = '2dc94e8063b93e0239583b2a46fb13621c80b2d605684c37a40e0f2dcda6461f'
  checksumType   = 'sha256'
  softwareName   = 'PDF Password Recovery*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
