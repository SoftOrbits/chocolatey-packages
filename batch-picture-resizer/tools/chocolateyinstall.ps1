$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/14.2/PicResize.exe'
  checksum       = 'c59ddb23e4fb4588523658ba717cb43db93185f48c32869e919a26ad94899d07'
  checksumType   = 'sha256'
  softwareName   = 'Batch Picture Resizer*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
