$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.3/UsbDriveEncryptionSetup.exe'
  checksum       = 'da231ba98fa75a5bc0b0c7039503117870ebdab46db37d5650742e68909cac18'
  checksumType   = 'sha256'
  softwareName   = 'USB Drive Encryption*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
