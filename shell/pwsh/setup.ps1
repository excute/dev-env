if (Test-Path "$env:OneDrive/Documents/PowerShell/Microsoft.PowerShell_profile.ps1") {
	Remove-Item "$env:OneDrive/Documents/PowerShell/Microsoft.PowerShell_profile.ps1"
}
Copy-Item "./Microsoft.PowerShell_profile.ps1" -Destination "$env:OneDrive/Documents/PowerShell/Microsoft.PowerShell_profile.ps1"

# if (Test-Path "$env:OneDrive/Documents/PowerShell/oh-my-posh.yaml") {
# 	Remove-Item "$env:OneDrive/Documents/PowerShell/oh-my-posh.yaml"
# }
# Copy-Item "../oh-my-posh/oh-my-posh.yaml" -Destination "$env:OneDrive/Documents/PowerShell/oh-my-posh.yaml"

