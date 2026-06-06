# HomeBase Bootstrap

HomeBase currently starts as an unmodified Baserow source import so we can run the
baseline product before changing behavior.

## Imported Source

- Upstream repository: https://github.com/baserow/baserow
- Upstream branch: `develop`
- Upstream commit: `a1528edb0340bc509c900215bc3cb58b8fdcf05a`
- Import method: shallow clone of upstream source, copied into this repository without
  Baserow's `.git` directory.

## Local Status

- Docker is installed.
- Docker Compose is installed.
- `just` is not installed yet.
- No HomeBase product customizations have been made yet.
- The HomeBase source dev stack has been verified on this Windows machine.

## Baseline Run Options

For a quick Baserow container using the published image:

```powershell
docker run -v baserow_data:/baserow/data -p 80:80 -p 443:443 baserow/baserow:2.2.2
```

For Baserow's source-based development environment, install `just` first, then use:

```powershell
just dc-dev build --parallel
just dc-dev up -d
```

Because `just` is not installed here yet, the equivalent direct Docker Compose command
is:

```powershell
$env:PWD = (Get-Location).Path
$env:UID = '1000'
$env:GID = '1000'
docker compose --env-file .env.docker-dev -f docker-compose.yml -f docker-compose.dev.yml up -d
```

The dev environment is expected at http://localhost:3000 after it starts. In the
current dev routing, use http://localhost:3000/login as the main app entry point.

This Windows checkout converted a few upstream symlink placeholders into plain text
files. The dev Compose file now mounts the real locales and `node_modules` locations
so the source stack can run cleanly on Windows.

## GitHub Remote

Target GitHub account: `jacobrhodes20-dev`

Target repository name: `HomeBase`

The GitHub connector available in this session can work with existing repositories,
but it does not expose repository creation. Once `jacobrhodes20-dev/HomeBase` exists
on GitHub, this local repository can be pushed to:

```powershell
git remote add origin https://github.com/jacobrhodes20-dev/HomeBase.git
git push -u origin main
```
