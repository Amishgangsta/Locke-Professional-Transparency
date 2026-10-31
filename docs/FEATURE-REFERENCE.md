# Locke Professional — detailed feature reference

This is a source-reviewed feature catalogue for legal teams and technical evaluators, dated October 31, 2026. "Implemented" means the reviewed `release` branch contains the relevant workflow, not that every provider integration or tenant is live and enabled.

| Area | What the product supports | Qualification |
|---|---|---|
| Workspace dashboard | Review queue, obligation exposure, summary metrics and reports entry points | Reflects present workspace state |
| Contract repository | Organization-owned contracts, title/counterparty/type/value/owner/dates and full-text search | Requestor visibility is restricted |
| Intake | Internal requests, uploads, submissions and acceptance into drafts | Not public external intake |
| Import | Text-bearing PDF, DOCX and text; scanned images/PDF through local OCR | OCR can require review/correction |
| Counterparty review | Selected client posture, source-backed issue queue, severity, playbook guidance, dispositions and comments | Attorney outcome is authoritative |
| Redlining/compare | Text additions and removals between documents or recorded versions | Does not imply direct Word Track Changes collaboration |
| Risk analysis | Surfaced verified issues and review outcomes | Risk conclusions require professional review |
| Governed drafting | Template-based assembly, custom-agreement brief, issue cards, clause families | Product readiness controls apply |
| AI drafting assistance | Structured language suggestions with provider/model association | Configured provider required; not unrestricted AI contract generation |
| Jurisdiction support | State/local context and explicit uncertainty/gaps | Not a guarantee of every county-specific form |
| Ask Locke | Contract-context explanation, relevant next steps, template suggestions | May receive bounded source excerpts through a provider |
| Approval | Configurable approval gate, content-bound authorization, separate approver in multi-member organizations | Solo organization can self-approve |
| First-party signing | Typed/drawn signatures with consent record | Not an independently qualified signing service |
| Executed artifact | Signed copy saved with hash verification on download | External signed copy can be uploaded |
| Obligations | Queued extraction, status tracking, linkage to contract/review finding | AI availability can affect extraction |
| Renewals | Calculated dates and notice periods; weekend-aware day arithmetic | No automatic reminder; no public-holiday model |
| Reporting | Current review, obligation and risk counts; exportable snapshot | Period selector does not provide historical series |
| Organization administration | Membership, roles, invitation/administration controls | Outbound email depends on provider configuration |
| Account security | Sign-in/out, verification, recovery, MFA and sessions | Production settings require environment checks |
| Exports | PDF, DOCX, RTF, ODT, HTML, Markdown, plain text | Server-generated formats |

## Scope limits

- No independently verified **live self-service Stripe subscription checkout**; the reviewed source describes administrative access assignment and incomplete payment-provider wiring.
- No public external-party intake link in the reviewed release.
- No automatic deadline reminder dispatch; dates are presented for human follow-up.
- The report period selector does not establish a historical time-series data store.
- Weekend-aware deadline calculations do not automatically apply public holidays.
- First-party signature consent is not represented as third-party verified identity, a qualified e-signature trust service, or attorney attestation.
- Legal analysis, draft proposals, and model answers can be inaccurate; attorney review remains essential.
- Pricing, uptime, deployment status, current integrations, and template counts require production-level verification before public sales commitments.

[Overview](../README.md) · [Verification](VERIFICATION-AND-STATUS.md)
