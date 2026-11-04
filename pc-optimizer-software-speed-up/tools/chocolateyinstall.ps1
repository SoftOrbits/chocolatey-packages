$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.2/PCOptimizerSetup.exe'
  checksum       = 'c4f733067e3db0150cbff042e93e5c38903bd93f32be6858f38109e1ba5ad101'
  checksumType   = 'sha256'
  softwareName   = 'PC Optimizer Software - Speed Up*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
