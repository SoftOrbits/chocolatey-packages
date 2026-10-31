$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.2/FolderPasswordProtectorSetup.exe'
  checksum       = '6af6039c9aff0afd6f7460fb08cbd3bc95e71c952449da5b2e4f5fb522946dfa'
  checksumType   = 'sha256'
  softwareName   = 'Folder Password Protector*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
