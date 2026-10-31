# One contract record through the lifecycle

Locke Professional connects the request, drafts, review work, approval decisions, executed copies, and post-execution follow-up.

| Stage | Workspace support | Boundary |
|---|---|---|
| **Intake** | Authorized internal teammates request a document, upload material, and submit | No public counterparty-submission link in this release |
| **Matter & repository** | Organization-owned contract metadata, assigned owner, searchable title/body, status | Role-aware read access; requestors are limited to their own submissions |
| **Draft & review** | Governed templates, custom-agreement briefs, issue cards, imported counterparty documents | Lawyer chooses and records final language and dispositions |
| **Negotiation** | Compare text/version changes and compose clause redlines | Not a claim of external email negotiation automation |
| **Approval** | When configured, an approval must match the current text; multi-member organizations require a separate approver | Changing the draft after approval blocks signature until reapproved |
| **Signature** | Typed/drawn first-party consent ledger; signed-external-document upload | Not a qualified independent electronic-signature service |
| **Executed record** | Signed bytes, metadata and hash written as a controlled executed-artifact transition | Hash verification on download detects unexpected alteration |
| **Post-signature** | Queued obligation extraction, issue-linked duties, calculated notice/renewal dates | AI provider required to drain extraction queue; no automatic deadline reminders |
| **Reporting** | Current dashboard counts for review load, obligations and risks, with snapshot export | Report period selection does not establish a historical time-series backend |

## Dates without hidden assumptions

The reviewed implementation computes nonrenewal notice periods from recorded contract terms; weekends can be excluded when business-day arithmetic applies. It **does not infer a missing notice period**, does **not apply jurisdiction-specific public holidays**, and **does not automatically send reminders**. A reviewable date with a disclosed limitation is preferable to an invented deadline.

## Execution integrity

The release source requires an executed artifact in order to mark a contract executed; approval enforcement applies at signature as well as lifecycle transitions. Approval binds to a content hash so that a replaced draft cannot silently inherit its predecessor's sign-off.

## Example: a contract approaching renewal

An attorney can locate the executed supplier agreement, inspect its notice provision, update the recorded term facts, and review the calculated renewal deadline alongside assigned obligations. The team remains responsible for taking action before the deadline; the application is not presently an automated reminder service.

[Full feature reference](FEATURE-REFERENCE.md) · [Privacy and security](PRIVACY-AND-SECURITY.md) · [Back to overview](../README.md)
