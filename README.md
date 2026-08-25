# Dexwin Health Provider Portal — Claude Design canvas source

Working source for the [Dexwin Health Provider Portal](https://claude.ai/code/artifact/1c1b5305-308e-403f-a0ef-a47375b26b70)
Claude Design canvas: Sign In, Bills, Patients, and the four Generate Bill
outcome screens (Pending, Success, Declined, Expired).

## Layout

```
artboards/       The 7 canvas artboards (.dc.html). artboards/Main.dc.html
                  is the entry artboard (Sign In).
assets/           Every image the artboards reference, by bare filename
                  (the .dc.html source refers to them with no folder
                  prefix — this folder is just how they're kept on disk).
canvas.json       Canvas layout manifest (artboard positions/sizes).
design.md         Design-system reference pulled from the Dexwin Figma
                  file (colors, type, spacing, components).
scripts/          Automation that keeps this repo in sync with the
                  published canvas (see below).
```

## Keeping this in sync with the live canvas

`scripts/sync-canvas.sh` runs a headless Claude Code session (prompt in
`scripts/sync-prompt.txt`) that checks the published artifact for saved
changes and, if any exist, pulls them into `artboards/`/`assets/`/
`canvas.json` and commits+pushes. It's triggered daily by a local
`launchd` job on the machine that authored this repo — it only runs
while that Mac is on, and requires `claude auth login` to be valid.
Logs land in `.sync-logs/` (git-ignored).

## Re-publishing manually

If you ever need to re-seed and republish this canvas by hand (see the
`design` skill), pass the artboard/image files from their current
folders — e.g. `--artboard artboards/Main.dc.html --image assets/bank.png`.
The seeding helper keys everything by bare filename regardless of which
folder you read it from, so `canvas.json`'s `"file"` fields stay exactly
as they are (bare names) and need no changes.
