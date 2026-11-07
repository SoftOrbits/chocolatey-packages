$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  softwareName   = 'ICS to CSV Converter*'
  fileType       = 'exe'
  silentArgs     = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes = @(0)
}

[array]$key = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

if ($key.Count -eq 1) {
  $key | ForEach-Object {
    $packageArgs['file'] = "$($_.UninstallString)".Trim('"')
    Uninstall-ChocolateyPackage @packageArgs
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$($packageArgs['packageName']) has already been uninstalled by other means."
} else {
  Write-Warning "$($key.Count) matches found, nothing uninstalled:"
  $key | ForEach-Object { Write-Warning "- $($_.DisplayName)" }
}
