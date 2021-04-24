
##############################
# Prompt
##############################
if ($null -ne (Get-Command -Name starship 2>$null)) {
	Invoke-Expression (&starship init powershell)
} else {
	function Prompt()
	{
        $host.UI.RawUI.WindowTitle = "ぱわーしぇる"
        $currentDir = $PWD.Path.Replace("$HOME", "~").Replace("Microsoft.PowerShell.Core.FileSystem", "")
		Write-Host " $currentDir " -ForegroundColor "Blue" -NoNewLine
		return "`n --> "
	}
}

##############################
# Key bindings and console Color
##############################
$PSReadlineOptions = @{
	EditMode = "Emacs"
	HistoryNoDuplicates = $true
	HistorySearchCursorMovesToEnd = $true
	Colors = @{
		Command = "White"
	}
}
Set-PSReadlineOption @PSReadlineOptions

Set-PSReadlineKeyHandler -Key "Ctrl+o" -Function MenuComplete

##############################
# aliases
##############################
if($null -ne (Get-Module -All Get-ChildItemColor 2>$null)) {
    Set-Alias l   Get-ChildItemColorFormatWide
    Set-Alias ll  Get-ChildItemColor
    Set-Alias s   Select-Object
    Set-Alias new New-Object
}

##############################
# PSFzf
##############################
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

##############################
# Scoop completion
##############################
Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)/modules/scoop-completion"

##############################
# posh-git
##############################
Import-Module posh-git
