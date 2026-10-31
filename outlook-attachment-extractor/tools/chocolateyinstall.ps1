$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.3/OutlookAttachmentExtractor.exe'
  checksum       = '2f7f1669e9e71ba68c2c709936a0f1c06eb7e13bd44a5296d8aab9d2b96e21d7'
  checksumType   = 'sha256'
  softwareName   = 'Outlook Attachment Extractor*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
