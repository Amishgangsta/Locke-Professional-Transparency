# Evidence, release identity, and verification status

**Documentation assembled:** October 31, 2026.

## Source inspected

- Private canonical source: `Amishgangsta/Locke-Professional`, GitHub **`release`** branch.
- Verified branch SHA: **`89b3f80e4f660a962d0f4417dd830b433e245c10`** (GitHub API, October 31, 2026).
- `package.json` version on that branch: **`0.7.1`**.
- Review included source modules for Ask Locke, contract chat, organization scope, review completion, approvals, guided drafting, capability registry, executed artifacts, MFA, and AI provider routing.
- The source repository is **private**; these public documents summarize design and product-facing capabilities without including proprietary source.

## Evidence classification

| Statement | Evidence | Level |
|---|---|---|
| Version and branch commit | Current private GitHub release branch and package manifest | **Source verified** |
| Organization roles, content-bound approvals, artifact integrity, Ask Locke routing and guided drafting | Current `release` branch modules | **Source verified** |
| 97 templates | Public marketing homepage **source present on release branch** | **Verified as committed copy**, not current live website |
| 99 templates | Owner-provided report of signed-in workspace at build `89b3f80` | **Owner-reported**; not independently reconciled |
| Production is serving the same commit right now | Not confirmed from a live authenticated deployment or Railway status | **Unverified** |
| Live AI providers, delivery email, OCR resources, payment checkout | Runtime configuration and service health not inspected | **Runtime-dependent / not fully verified** |
| Independent security/privacy certification or penetration test | No qualifying evidence reviewed | **Not claimed** |
| Full current regression suite green | No test suite executed during preparation | **Not claimed** |

## Test-record distinction

The source tree contains security and integration regression tests and a dated release classification record from August 21, 2026. That record explicitly describes **aggregate suite failures** associated with fixtures and other baseline conditions. Accordingly, this publication makes **no claim that every current test passes** or that the current live deployment has an independently validated security posture. Code presence, passing historical tests, signed-in UI observations and production verification are different forms of evidence and must not be conflated.

## Deployment and public marketing boundaries

The repository's `AGENTS.md` directs **`main` to staging** and **`release` to production**. The public marketing HTML/CSS/JS files are explicitly protected by an owner instruction and were **not edited** in creating these documents. Public site pages could not be successfully fetched using the available browser retrieval in this session, so no current live marketing content is independently certified here.

The public-facing docs may be updated to incorporate newly verified deployments, catalog snapshots and tests by recording the **date, source, SHA, and scope of each verification**.

## Relevant sources

- [Locke Professional website](https://lockeprofessional.com)
- [Feature overview](FEATURE-REFERENCE.md)
- [Library counts and reconciliation](LIBRARY-COVERAGE.md)

The canonical source repository is private; access may be granted to authorized reviewers separately.
