# RunbookPM Product Plan

**Project management playbooks that make every handoff clear.**

RunbookPM should help a project manager become more effective quickly by turning
repeatable project knowledge into guided execution. Instead of starting from a
blank task table, a PM assembles a project from proven work blocks. Each work
block generates the right tasks, owners, handoffs, acceptance states, and
readiness signals.

## Core Model

```text
Project
Work block templates
Assignment-chain templates
Generated tasks and handoffs
Activity log
PM readiness dashboard
```

## Product Promise

RunbookPM is for teams that need work to move predictably between people or
departments. The product should answer:

- Who owns the next action?
- What is blocked?
- What is late?
- Which department is holding up readiness?
- Which handoffs were rejected or need clarification?
- What should the PM do next?

## Differentiator

RunbookPM is not just a branded task table. The distinct layer is reusable
work blocks with controlled assignment chains:

```text
Engineering -> CNC -> Fabrication -> Production -> QC -> Complete
```

Each step can define owner, department, due offset, acceptance requirement,
rejection path, clarification path, and next owner. When a PM adds the work
block to a project, RunbookPM should generate the actual tasks and handoffs.

## MVP Scope

- Project creation
- Work block template library
- Add work blocks to a project
- Assignment-chain template selection
- Automatic task and handoff generation
- My Tasks
- Department Queue
- Task detail panel
- Status and assignee changes
- Handoff states: Sent, Accepted, Rejected, Needs Clarification, Complete
- Activity log
- PM dashboard with blockers and readiness rollups

## Foundation Boundary

Baserow remains the open-source database foundation: tables, records, views,
permissions, APIs, admin, and storage. RunbookPM-specific project/workflow code
should be kept in separate modules or folders where practical so the custom PM
product layer is clearly distinguishable from the Baserow foundation.

## Licensing And Branding Notes

- Keep Baserow MIT license and copyright notices.
- Do not claim ownership of original Baserow code.
- Do not use Baserow branding, logos, or trademarks as the product brand.
- Keep RunbookPM custom PM/workflow code clearly separated from foundation code.
- Review proprietary Baserow Premium, Advanced, and Enterprise code before any
  commercial distribution.
