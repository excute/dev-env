$sourcePath = "./authorized_keys"
$targetPath = "C:\ProgramData\ssh\administrators_authorized_keys"

if (Test-Path $targetPath) {
	Remove-Item $targetPath
}

New-Item -Path $targetPath -Value $sourcePath -ItemType HardLink
