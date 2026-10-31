$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/1.3.0/VoiceDictation.exe'
  checksum       = '37772b982ef200dd84d39e4041091058f852c7b3ac7c180d6d246cd1198630ec'
  checksumType   = 'sha256'
  softwareName   = 'SayOnce - Voice Dictation Software*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
