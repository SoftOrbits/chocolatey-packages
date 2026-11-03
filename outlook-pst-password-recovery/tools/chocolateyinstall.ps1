$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.5/OutlookPassRecovery.exe'
  checksum       = 'f735a91b995483f1191b2d598d794cedb541fdb483b9618ee525d51400738517'
  checksumType   = 'sha256'
  softwareName   = 'Outlook PST Password Recovery*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
