Copy-Item ./whitelist.json ./server/whitelist.json
(Get-Content ./server/server.properties) | foreach { $_ -replace "white-list=false", "white-list=true" } | Set-Content ./server/server.properties