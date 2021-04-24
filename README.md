e windotfiles

dotfiles for Windows

## Scoop packages

Install <a href="https://github.com/lukesampson/scoop">scoop</a>. (the package manager for Windows)

```powershell
(New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh') | Out-File -Encoding Default Install-Scoop.ps1
./Install-Scoop.ps1
```

If you get an error you might need to change the execution policy.

```powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Install all packages with scoop:

```powershell
scoop install ((cat scoop-pkglist.txt) -join " ")
```

## PowerShell

### Setup profile

To install powershell profile, copy `./PowerShell/Microsoft.PowerShell_profile.ps1` to profile file

```powershell
cd windotfiles

scoop install powershell
Get-Content ./PowerShell/Microsoft.PowerShell_profile.ps1 | Out-File -Append $PROFILE
```

*NOTE* The profile file is in the following path:

- PowerShell Core (6.x+): `~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1`
- Windows PowerShell: `~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1`

### Setup prompt

After installing <a href="https://starship.rs/">starship prompt</a> and reloading the profile, the prompt will be set automatically.

```powershell
scoop install starship
. $PROFILE # Reload PowerShell profile
```

## Auto Hot Key

Install <a href="https://www.autohotkey.com/">Auto Hot Key</a> and launch `./ahk/main.ahk`.

```powershell
scoop install autohotkey
```

To start automatically at startup, place `*.ahk` scripts in the startup directory.

```powershell
cp ./ahk/* "$env:APPDATA\Microsoft\Windows\Start Menu\Programs\Startup\"
```

*NOTE* You can open the startup directory in Explorer by following the steps below:

1. `Win+R` to open *Run* (ファイル名を指定して実行) dialog.
2. Type `shell:startup`
3. Press `Enter` to open it.

