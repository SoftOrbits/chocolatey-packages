$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://download.softorbits.com/filesNew/v/19.1/PhotoStampRemover-Setup.exe'
  checksum64     = '6e083dd033ad8efc91b728801b1df7fd1f3be0c3a23b45f89301f43d3f3318b1'
  checksumType64 = 'sha256'
  softwareName   = 'Photo Stamp Remover*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
