# Shell
## Powershell config
if (Test-Path "$env:OneDrive/Documents/PowerShell/Microsoft.PowerShell_profile.ps1") {
	Remove-Item "$env:OneDrive/Documents/PowerShell/Microsoft.PowerShell_profile.ps1"
}
Copy-Item "./Microsoft.PowerShell_profile.ps1" -Destination "$env:OneDrive/Documents/PowerShell/Microsoft.PowerShell_profile.ps1"

## Oh-my-posh
if (Test-Path "$env:OneDrive/Documents/PowerShell/oh-my-posh.json") {
	Remove-Item "$env:OneDrive/Documents/PowerShell/oh-my-posh.json"
}
New-Item -Path "$env:OneDrive/Documents/PowerShell/oh-my-posh.json" -ItemType HardLink -Value "../oh-my-posh/oh-my-posh.json"
# Copy-Item "../oh-my-posh/oh-my-posh.json" -Destination "$env:OneDrive/Documents/PowerShell/oh-my-posh.json"


# git
if (Test-Path "$env:USERPROFILE/.gitconfig") {
	Remove-Item "$env:USERPROFILE/.gitconfig"
}
New-Item -Path "$env:USERPROFILE/.gitconfig" -ItemType HardLink -Value "../../git/.gitconfig"
# Copy-Item "../../git/.gitconfig" -Destination "$env:USERPROFILE/.gitconfig"


# go
## golang-ci
if (Test-Path "$env:USERPROFILE/.golangci.yaml") {
	Remove-Item "$env:USERPROFILE/.golangci.yaml"
}
New-Item -Path "$env:USERPROFILE/.golangci.yaml" -ItemType HardLink -Value "../../go/.golangci.yaml"