# Shell
## Powershell config
if (Test-Path "$env:OneDriveConsumer/Documents/PowerShell/Microsoft.PowerShell_profile.ps1") {
	Remove-Item "$env:OneDriveConsumer/Documents/PowerShell/Microsoft.PowerShell_profile.ps1"
}
# Copy-Item "./Microsoft.PowerShell_profile.ps1" -Destination "$env:OneDriveConsumer/Documents/PowerShell/Microsoft.PowerShell_profile.ps1"
New-Item -Path "$env:OneDriveConsumer/Documents/PowerShell/Microsoft.PowerShell_profile.ps1" -ItemType HardLink -Value "./Microsoft.PowerShell_profile.ps1"
# New-Item -Path "$env:OneDriveConsumer/Documents/PowerShell/Microsoft.PowerShell_profile.ps1" -ItemType SymbolicLink -Target "./Microsoft.PowerShell_profile.ps1"

## Oh-my-posh
if (Test-Path "$env:OneDriveConsumer/Documents/PowerShell/oh-my-posh.json") {
	Remove-Item "$env:OneDriveConsumer/Documents/PowerShell/oh-my-posh.json"
}
# Copy-Item "../oh-my-posh/oh-my-posh.json" -Destination "$env:OneDriveConsumer/Documents/PowerShell/oh-my-posh.json"
New-Item -Path "$env:OneDriveConsumer/Documents/PowerShell/oh-my-posh.json" -ItemType HardLink -Value "../oh-my-posh/oh-my-posh.json"
# New-Item -Path "$env:OneDriveConsumer/Documents/PowerShell/oh-my-posh.json" -ItemType SymbolicLink -Target "../oh-my-posh/oh-my-posh.json"


# git
if (Test-Path "$env:USERPROFILE/.gitconfig") {
	Remove-Item "$env:USERPROFILE/.gitconfig"
}
# Copy-Item "../../git/.gitconfig" -Destination "$env:USERPROFILE/.gitconfig"
New-Item -Path "$env:USERPROFILE/.gitconfig" -ItemType HardLink -Value "../../git/.gitconfig"
# New-Item -Path "$env:USERPROFILE/.gitconfig" -ItemType SymbolicLink -Target "../../git/.gitconfig"


# go
## golang-ci
if (Test-Path "$env:USERPROFILE/.golangci.yaml") {
	Remove-Item "$env:USERPROFILE/.golangci.yaml"
}
New-Item -Path "$env:USERPROFILE/.golangci.yaml" -ItemType HardLink -Value "../../go/.golangci.yaml"
# New-Item -Path "$env:USERPROFILE/.golangci.yaml" -ItemType SymbolicLink -Target "../../go/.golangci.yaml"