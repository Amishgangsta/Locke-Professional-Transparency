# Publish ONLY this public documentation package. Requires git and GitHub CLI (gh).
# Intentionally refuses to run from any other folder or an existing Git checkout.
$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
if ((Split-Path $root -Leaf) -ne 'Locke-Professional-Transparency') { throw 'Unexpected folder name; publishing aborted.' }
Set-Location -LiteralPath $root
if (Test-Path -LiteralPath '.git') { throw 'Folder already contains .git; inspect manually before proceeding.' }
if (!(Test-Path -LiteralPath '.\README.md')) { throw 'Public README missing.' }
foreach ($name in @('git', 'gh')) {
  if (-not (Get-Command $name -ErrorAction SilentlyContinue)) { throw "Required CLI unavailable: $name" }
}
python .\scripts\verify_public_docs.py
if ($LASTEXITCODE -ne 0) { throw 'Public docs verification failed.' }
# gh prints authentication details to stderr even on success; judge by exit code.
$oldPreference = $ErrorActionPreference
$ErrorActionPreference = 'Continue'
& gh auth status *> $null
$authExit = $LASTEXITCODE
$ErrorActionPreference = $oldPreference
if ($authExit -ne 0) { throw 'GitHub CLI not authenticated.' }
$target = 'Amishgangsta/Locke-Professional-Transparency'
$oldPreference = $ErrorActionPreference
$ErrorActionPreference = 'Continue'
& gh repo view $target --json name -q .name *> $null
$viewExit = $LASTEXITCODE
$ErrorActionPreference = $oldPreference
if ($viewExit -eq 0) { throw "Target repo $target already exists; refusing to overwrite." }

git init -b main
if ($LASTEXITCODE -ne 0) { throw 'git init failed.' }
git add README.md CHANGELOG.md PUBLISHING.md docs scripts .gitignore
if ($LASTEXITCODE -ne 0) { throw 'git add failed.' }
git commit -m 'docs: publish Locke Professional client and technical reference'
if ($LASTEXITCODE -ne 0) { throw 'Git commit failed; configure your Git identity if needed.' }
gh repo create $target --public --source . --remote origin --push --description 'Public technical reference for Locke Professional: Ask Locke, guided drafting, contract review, privacy, lifecycle and governance'
if ($LASTEXITCODE -ne 0) { throw 'GitHub publication failed; inspect local repository and remote before retry.' }
Write-Host "Published https://github.com/$target"
