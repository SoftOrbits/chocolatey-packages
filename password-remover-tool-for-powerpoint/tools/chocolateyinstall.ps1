$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.2/PowerPointPassRecovery.exe'
  checksum       = 'a948d1187a11e8c855fefe087b5523d696419122fb87b7a04dd6551fd592e78c'
  checksumType   = 'sha256'
  softwareName   = 'Password Remover Tool for PowerPoint*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
