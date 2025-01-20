if (Test-Path "$env:USERPROFILE/.ssh/authorized_keys") {
	Remove-Item "$env:USERPROFILE/.ssh/authorized_keys"
}

New-Item -Path "$env:USERPROFILE/.ssh/authorized_keys" -Value ./authorized_keys -ItemType SymbolicLink
