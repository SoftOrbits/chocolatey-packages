$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = 'https://download.softorbits.com/filesNew/v/3.2/SpreadsheetCompareMerge.exe'
  checksum       = 'f8fffbaa22126bfac6237ba279b408d782249373f90cef75249d23c8ddac85cc'
  checksumType   = 'sha256'
  fileFullPath   = Join-Path $env:TEMP "$($env:ChocolateyPackageName)\$($env:ChocolateyPackageVersion)\SpreadsheetCompareMerge-chocolatey.exe"
  softwareName   = 'Spreadsheet Compare & Merge Tool for Excel - Combine Excel Files into One*'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

Get-ChocolateyWebFile @packageArgs | Out-Null
Install-ChocolateyInstallPackage @packageArgs
