$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.3/MsgToEml.exe'
  checksum       = '0adcbf51fc377fc9e9bb094cfb35a1bbc60e9a46d41d967bb8c35712e624b115'
  checksumType   = 'sha256'
  softwareName   = 'MSG to EML Converter*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
