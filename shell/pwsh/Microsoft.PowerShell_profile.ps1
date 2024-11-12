# Prompt
## oh-my-posh
oh-my-posh init pwsh --config "$env:OneDrive/Documents/PowerShell/oh-my-posh.yaml" | Invoke-Expression

## posh-git
Import-Module posh-git
$env:POSH_GIT_ENABLED = $true

## StarShip
# Invoke-Expression (&starship init powershell)


# Tools
## DirEnv
# Invoke-Expression "$(direnv hook pwsh)"

## Choco
### Import the Chocolatey Profile that contains the necessary code to enable
### tab-completions to function for `choco`.
### Be aware that if you are missing these lines from your profile, tab completion
### for `choco` will not function.
### See https://ch0.co/tab-completion for details.
# $ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
# if (Test-Path($ChocolateyProfile)) {
#   Import-Module "$ChocolateyProfile"
# }

## PowerToys CommandNotFound module
Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58

## Linux X11 Forwarding
$env:DISPLAY=":0"


# Completions
## GitHub
Invoke-Expression -Command $(gh completion -s powershell | Out-String)

## winget
Register-ArgumentCompleter -Native -CommandName winget -ScriptBlock {
	param($wordToComplete, $commandAst, $cursorPosition)
	[Console]::InputEncoding = [Console]::OutputEncoding = $OutputEncoding = [System.Text.Utf8Encoding]::new()
	$Local:word = $wordToComplete.Replace('"', '""')
	$Local:ast = $commandAst.ToString().Replace('"', '""')
	winget complete --word="$Local:word" --commandline "$Local:ast" --position $cursorPosition | ForEach-Object {
		[System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
	}
}

## oh-my-posh
oh-my-posh completion powershell | Out-String | Invoke-Expression
