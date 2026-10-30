# SoftOrbits Chocolatey packages

Source of the [Chocolatey Community Repository](https://community.chocolatey.org/) packages for SoftOrbits and GRTSoft Windows desktop software. Each folder is one package: a `.nuspec` with the package metadata and `tools/chocolateyinstall.ps1` / `chocolateyuninstall.ps1`. The packages contain no binaries and no application code: the install script downloads the official installer from `download.softorbits.com` (a versioned URL that never changes for a given version) and checks it against the SHA256 stored in the script.

All programs are commercial trial software: the installed version works in trial mode until a license is purchased on the product site. Installation and removal are silent (Inno Setup `/VERYSILENT /SUPPRESSMSGBOXES /NORESTART`), no browser or window is opened.

`.github/workflows/install-test.yml` is a manual check run before a package or a new version is published: it downloads the installer, verifies the hash, installs it silently on a clean `windows-latest` runner, checks the Apps and Features entry and version, makes sure no browser or window appeared, uninstalls it, and repeats the cycle through `winget install --manifest` and `choco install` from this folder. Problems with a package: [support](https://www.softorbits.net/support.html).
