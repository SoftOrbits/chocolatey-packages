$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url64bit       = 'https://download.softorbits.com/filesNew/v/13.1/SketchDrawer.exe'
  checksum64     = 'cbf0b39d0be64ee7ef912ea58397f5297d451468788a497fb062ff00d6b5a717'
  checksumType64 = 'sha256'
  softwareName   = 'Sketch Drawer*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
