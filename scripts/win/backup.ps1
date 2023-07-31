if ((Get-Item (Get-Location)).Name -eq "server") {
    Write-Host "wrong directory, please run this script from the root of the server directory"
} else {
    Remove-Item -Recurse -Force backups
    Copy-Item -Recurse -Force server\backups backups
}
