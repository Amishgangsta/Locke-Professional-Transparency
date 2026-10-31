# Privacy and security architecture

## The protection model

Locke Professional is designed for organizations handling sensitive legal work. The reviewed source implements authorization, document integrity, account controls, and separate boundaries for AI assistance. **"Privacy-minded" is an architectural characterization, not a security certification or a promise of zero external processing.**

### Organization and user access

- Contract data is scoped to an organization. Owner, counsel, and approver memberships can see the organization's contracts, while requestor memberships are limited to contracts they filed.
- Contract visibility is implemented as a centralized access predicate, with source-level regression checking for queries that bypass that predicate.
- Administrator membership operations and account permissions are governed separately from ordinary contract access.
- Application-level membership enforcement is authoritative. The release's tenant-context foundation is **not equivalent to claiming deployed PostgreSQL row-level security**.

### Sessions and identity

- The application contains sign-in, sign-out, email verification, password recovery, session enumeration/revocation, and multi-factor enrollment/verification services.
- Sensitive privileges and signature-related operations have additional checks in the reviewed code.
- Outbound account email and invitation delivery depend on a configured sender; code presence alone does not establish live delivery.

### Document and approval integrity

- Imported document text is treated as **untrusted content**: display uses text-node rendering rather than executing HTML inside the signed-in workspace.
- Original files, extracted text, review findings, and attorney dispositions remain distinguishable records.
- Approval checks can bind a decision to the content that was approved, requiring fresh approval after document changes under the configured policy.
- Executed artifacts include SHA-256 integrity metadata and are verified when downloaded; the status change and signed-artifact storage are designed to occur transactionally.

### AI and provider disclosure

- Ask Locke and other configured AI tasks may send user questions, **bounded portions of contract text**, and task context to an external model provider.
- Contract chat's reviewed default excerpt is 12,000 characters; longer contracts require explicit partial-context disclosure.
- The application validates selected structured outputs and tracks applicable provider/model provenance. Contract text is data, not trusted model instructions.
- **No assertion is made here of on-device model execution, confidential-computing certification, blanket zero-data-retention agreements, or zero provider exposure.** Those would require deployment/vendor-level evidence.

### Operational boundaries requiring validation

The current live environment's network exposure, backups, data retention, third-party contract terms, outbound email, and active provider configuration must be confirmed independently for a security questionnaire. This public reference describes source-reviewed design controls and clearly labels environment-dependent claims.

## Intended client benefit

These measures make it easier for a law firm to maintain a shared, authorized contract record, keep signature status tied to approved content, and use AI while preserving the attorney's decision trail. They do **not** eliminate the firm's obligations to evaluate confidentiality, professional rules, and service-provider terms.

[Ask Locke boundaries](ASK-LOCKE.md) · [Technical architecture](TECHNICAL-ARCHITECTURE.md) · [Evidence](VERIFICATION-AND-STATUS.md)
