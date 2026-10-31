#!/usr/bin/env python3
"""Lightweight integrity checks for the public-only documentation package."""
from pathlib import Path
import re, sys
root = Path(__file__).resolve().parents[1]
mds = sorted(root.rglob('*.md'))
expected = {'README.md','CHANGELOG.md','PUBLISHING.md','docs/ASK-LOCKE.md',
 'docs/PRIVACY-AND-SECURITY.md','docs/GUIDED-DRAFTING.md',
 'docs/REVIEW-NEGOTIATION.md','docs/CONTRACT-LIFECYCLE.md',
 'docs/TECHNICAL-ARCHITECTURE.md','docs/CLIENT-USE-CASES.md',
 'docs/FEATURE-REFERENCE.md','docs/LIBRARY-COVERAGE.md','docs/VERIFICATION-AND-STATUS.md'}
problems=[]
found={str(p.relative_to(root)).replace('\\','/') for p in mds}
if expected-found: problems.append('Missing docs: '+', '.join(sorted(expected-found)))
for p in root.rglob('*'):
 if not p.is_file(): continue
 relative=str(p.relative_to(root)).replace('\\','/')
 if p.stat().st_size > 350_000: problems.append('Oversize file '+relative)
 if p.suffix.lower() in {'.ts','.tsx','.jsx','.env','.pdf','.docx','.pem','.key','.db'}:
  problems.append('Not a public docs file: '+relative)
 if relative.startswith(('public/','services/','routes/','db/','libraries/','platform/')):
  problems.append('Suspicious source/project path: '+relative)
for path in mds:
 text=path.read_text(encoding='utf-8')
 for target in re.findall(r'\]\(([^)]+)\)', text):
  if target.startswith(('http://','https://','mailto:','#')): continue
  dest=target.split('#')[0]
  if dest and not (path.parent / dest).exists(): problems.append(f'{path.relative_to(root)}: broken link {dest}')
full='\n'.join(p.read_text(encoding='utf-8') for p in mds)
for term in ['Ask Locke','guided drafting','organization','approval','privacy','signature','obligation','89b3f80']:
 if term.lower() not in full.lower(): problems.append('Missing topic: '+term)
print(f'Checked {len(mds)} Markdown files; {len(problems)} issue(s).')
for problem in problems: print('FAIL:',problem)
sys.exit(1 if problems else 0)
