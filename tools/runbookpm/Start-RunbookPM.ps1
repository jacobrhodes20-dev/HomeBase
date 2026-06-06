$ErrorActionPreference = "Stop"

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot "..\..")
Set-Location $repoRoot

$env:PWD = $repoRoot.Path
$env:UID = "1000"
$env:GID = "1000"

docker compose --env-file .env.docker-dev -f docker-compose.yml -f docker-compose.dev.yml up -d

Start-Sleep -Seconds 5
Start-Process "http://localhost:3000/login"
