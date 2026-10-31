# Publishing this documentation to its own public GitHub repository

This folder intentionally contains **only public-facing documentation**, an optional local publication script and no private application code, templates, customer materials, environment variables or credentials.

## Suggested repository

`Amishgangsta/Locke-Professional-Transparency`

Set the repository **Public**, description:

> Privacy-minded contract intelligence and lifecycle management: Ask Locke, guided drafting, attorney-led review, approvals, signatures, and obligations. Public technical reference; no proprietary source.

## Publish from Windows PowerShell

1. Extract this ZIP to a **new folder**, not inside `C:\Locke-Professional-Guided-Drafting` or any private checkout.
2. Verify Git and GitHub CLI are installed and the desired account is authenticated: `gh auth status`.
3. Run `./scripts/Publish-Public-Repo.ps1` from the folder root. The script checks the exact folder, refuses an existing Git checkout and avoids republishing to an existing repository.
4. Open the resulting GitHub page and inspect the public README, links and default branch.

Or create a public repository manually in GitHub and upload only the files from this ZIP; do **not** upload the source project's working tree.

## Verification before release

`python scripts/verify_public_docs.py`

The script checks internal Markdown links, prohibited source-like files and frozen marketing assets, missing key topic coverage, and documentation inventory; it cannot certify external factual claims or a live production deployment.

## Required future reconciliation

The committed public marketing copy says 97 templates; the owner-provided signed-in report says 99. Verify the production catalog API and deployed build, update the claims consistently in their proper repositories when specifically authorized, and record the evidence date. The marketing files in the private product are expressly protected and were not modified as part of this package.
