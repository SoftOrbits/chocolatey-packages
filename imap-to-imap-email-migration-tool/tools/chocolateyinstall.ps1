$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.6/ImapMigrationSetup.exe'
  checksum       = '170062d2a392d6b78a3fec59e793f24c2d9330d55a7feb97d021e959efaa4a9f'
  checksumType   = 'sha256'
  softwareName   = 'IMAP to IMAP Email Migration Tool*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
