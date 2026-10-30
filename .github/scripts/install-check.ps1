# Helpers for install-test.yml: Inno Setup silent install / uninstall checks on a clean runner.
# Dot-source it: . "$env:GITHUB_WORKSPACE\.github\scripts\install-check.ps1"

$ErrorActionPreference = 'Stop'
$Browsers = @('msedge', 'chrome', 'firefox', 'opera', 'brave', 'iexplore', 'vivaldi')
$UninstallRoots = @(
  'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall',
  'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall',
  'HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
)

function Get-ArpEntry([string]$ProductCode) {
  foreach ($root in $UninstallRoots) {
    $path = Join-Path $root $ProductCode
    if (Test-Path -LiteralPath $path) {
      $p = Get-ItemProperty -LiteralPath $path
      return [pscustomobject]@{
        Key             = $path
        DisplayName     = $p.DisplayName
        DisplayVersion  = $p.DisplayVersion
        Publisher       = $p.Publisher
        UninstallString = $p.UninstallString
      }
    }
  }
  return $null
}

function Get-ProcessSnapshot {
  Get-Process | Select-Object Id, ProcessName, MainWindowTitle, @{ n = 'Window'; e = { $_.MainWindowHandle -ne 0 } }
}

function Assert-NoNewWindows($Before, [string]$Stage) {
  $known = @{}
  foreach ($p in $Before) { $known[$p.Id] = $true }
  $new = Get-ProcessSnapshot | Where-Object { -not $known.ContainsKey($_.Id) }
  $bad = $new | Where-Object { $Browsers -contains $_.ProcessName.ToLower() -or $_.Window }
  if ($bad) {
    $bad | Format-Table -AutoSize | Out-String | Write-Host
    throw "$Stage opened a browser or a window: $(($bad | ForEach-Object ProcessName) -join ', ')"
  }
  Write-Host "$Stage - no new browser or windows ($(@($new).Count) new background processes)"
}

function Wait-ArpGone([string]$ProductCode, [int]$Seconds = 180) {
  # unins000.exe copies itself to %TEMP% and returns at once: poll the ARP key, not the process.
  $deadline = (Get-Date).AddSeconds($Seconds)
  while ((Get-Date) -lt $deadline) {
    if (-not (Get-ArpEntry $ProductCode)) { return }
    Start-Sleep -Seconds 3
  }
  throw "ARP key $ProductCode is still present $Seconds s after uninstall"
}

function Invoke-InnoUninstall([string]$ProductCode) {
  $arp = Get-ArpEntry $ProductCode
  if (-not $arp) { throw "ARP key $ProductCode not found - nothing to uninstall" }
  $exe = $arp.UninstallString.Trim('"')
  Write-Host "Uninstall: $exe /VERYSILENT /SUPPRESSMSGBOXES /NORESTART"
  $p = Start-Process -FilePath $exe -ArgumentList '/VERYSILENT', '/SUPPRESSMSGBOXES', '/NORESTART' -PassThru
  $p | Wait-Process -Timeout 300
  Wait-ArpGone $ProductCode
  Write-Host "Uninstalled: $ProductCode"
}

function Assert-Arp([string]$ProductCode, [string]$Version) {
  $arp = Get-ArpEntry $ProductCode
  if (-not $arp) { throw "ARP key $ProductCode not found after install" }
  $arp | Format-List | Out-String | Write-Host
  if ($Version -and $arp.DisplayVersion -ne $Version) {
    throw "DisplayVersion '$($arp.DisplayVersion)' != expected '$Version' (winget upgrade would loop)"
  }
  return $arp
}
