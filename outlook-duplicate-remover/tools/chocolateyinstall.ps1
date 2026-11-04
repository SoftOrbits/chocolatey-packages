$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.4/OutlookDuplicateRemover.exe'
  checksum       = '0124ad3e0fcc71d805bf6627a84d6c232ff0f37fcd854fbdb5fc067feeab8f66'
  checksumType   = 'sha256'
  softwareName   = 'Outlook Duplicate Remover*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
