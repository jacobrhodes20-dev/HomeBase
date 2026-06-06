# RunbookPM

**Project management playbooks that make every handoff clear.**

RunbookPM is a project/workflow execution system being built on top of the
MIT-licensed Baserow open-source codebase. The goal is not to create a
white-labeled Baserow clone. The goal is to use Baserow as the database
foundation while building a distinct project management layer for repeatable
work blocks, assignment-chain routing, handoff accountability, and project
readiness visibility.

## Product Direction

RunbookPM should help project managers become effective faster by giving them
structured project playbooks instead of blank task lists.

The core workflow is:

```text
PM creates a project
PM adds one or more work blocks
Each work block uses an assignment-chain template
RunbookPM generates tasks and handoffs
Users accept, complete, reject, or send work back
The PM sees ownership, blockers, readiness, and status rollups
```

## MVP Focus

- Project creation
- Work block template library
- Add work blocks to projects
- Assignment-chain template selection
- Automatic task and handoff generation
- My Tasks view
- Department Queue view
- Task detail panel
- Handoff states: Sent, Accepted, Rejected, Needs Clarification, Complete
- Activity log
- PM dashboard with blocker and readiness rollups
- RunbookPM branding

## Foundation

This repository currently starts from Baserow `2.2.2` source code imported from:

- Upstream repository: https://github.com/baserow/baserow
- Upstream branch: `develop`
- Upstream commit: `a1528edb0340bc509c900215bc3cb58b8fdcf05a`

Baserow provides the initial database, records, views, API, permissions, admin,
and application-builder foundation. RunbookPM-specific code should stay clearly
separated where practical so the custom project/workflow layer remains distinct
from the upstream foundation.

## Local Development

The source development stack runs through Docker Compose.

```powershell
$env:PWD = (Get-Location).Path
$env:UID = '1000'
$env:GID = '1000'
docker compose --env-file .env.docker-dev -f docker-compose.yml -f docker-compose.dev.yml up -d
```

The local app is available at:

```text
http://localhost:3000/login
```

The backend health endpoint is:

```text
http://localhost:8000/api/_health/
```

## Desktop Launcher

The local launcher helper lives at:

```text
tools/runbookpm/Start-RunbookPM.ps1
```

It starts the Docker Compose development stack and opens:

```text
http://localhost:3000/login
```

On this Windows machine, a desktop shortcut named `RunbookPM.lnk` points to that
script.

## Naming And GitHub

The product name is now **RunbookPM**.

The local checkout may still live in a folder named `Home Base`, and the GitHub
remote may still point at `jacobrhodes20-dev/HomeBase` until the GitHub
repository itself is renamed or recreated as `RunbookPM`.

Recommended GitHub target:

```text
jacobrhodes20-dev/RunbookPM
```

After the GitHub repository exists at that name, update the local remote with:

```powershell
git remote set-url origin https://github.com/jacobrhodes20-dev/RunbookPM.git
git remote -v
```

## Licensing Notes

Keep the Baserow MIT license and copyright notices intact. Do not claim
ownership of Baserow's original code. Do not use Baserow branding, logos, or
trademarks as the RunbookPM product brand.

Before commercialization, review:

- Baserow MIT license obligations
- Any remaining proprietary Baserow Premium, Advanced, or Enterprise code
- Baserow trademark/logo removal
- Third-party dependency licenses
- Separation between Baserow foundation code and RunbookPM custom code

See `LICENSE` for the original Baserow license information included with this
source import.
