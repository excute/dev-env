$sourcePath = "./authorized_keys"
$targetPath = "C:\ProgramData\ssh\administrators_authorized_keys"

if (Test-Path $targetPath) {
	Remove-Item $targetPath
}

# New-Item -Path "$env:USERPROFILE/.ssh/authorized_keys" -Value ./authorized_keys -ItemType SymbolicLink

New-Item -Path $targetPath -Value $sourcePath -ItemType SymbolicLink
