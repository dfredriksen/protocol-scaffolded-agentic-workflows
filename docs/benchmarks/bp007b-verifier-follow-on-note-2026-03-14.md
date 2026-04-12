# BP007B Verifier Follow-On Note - 2026-03-14

## Trigger
- `T03` exposed false-positive stretch acceptance from generic repo-adjacent language.
- `T05` exposed false-positive stretch acceptance from fabricated repo-specific language.

## Conclusion
- Reviewer wording alone is not sufficient.
- The next BP007B follow-on must require verifier-backed review against the actual retained repo inventory.

## Immediate next move
1. add verifier-backed review prompts that force artifact-name checking
2. rerun the strongest local candidate only after the verifier gate is in place
3. do not count any plain reviewer-only `PASS-STRETCH` as publication-grade evidence
