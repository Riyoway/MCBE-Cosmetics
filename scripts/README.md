# Scripts

## Import cape packs

Expand the five maintained `.mcpack` files into the repository:

```powershell
pwsh ./scripts/import-capes.ps1 -InputDirectory C:\path\to\mcpack-files
```

This creates `resource_packs/capes/Cape-Cosmetics-1` through `Cape-Cosmetics-5`.

## Package cape packs

Build installable `.mcpack` files from the unpacked repository copies:

```powershell
pwsh ./scripts/package-capes.ps1
```

Output is written to `dist/capes/` and is ignored by Git.
