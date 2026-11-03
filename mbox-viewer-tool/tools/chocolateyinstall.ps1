$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.2/MboxViewer.exe'
  checksum       = 'd9184c49fc94af49c9a64d9510881e364aec96a5cfa39cfe99183bf0a61ccf43'
  checksumType   = 'sha256'
  softwareName   = 'MBOX Viewer Tool*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
