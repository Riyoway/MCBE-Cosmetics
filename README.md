# MCBE Cosmetics

Client-side cosmetic resource packs for Minecraft Bedrock Edition.

Created and maintained by **Riyoway**.

## Cosmetics

| Category | Status |
| --- | --- |
| Capes | Available |
| Cape Physics | Planned |
| Wings | Planned |

## Repository layout

```text
MCBE-Cosmetics/
├─ src/
│  ├─ shared/          # Shared player/entity/render resources
│  ├─ capes/           # Cape packs and cape assets
│  ├─ cape-physics/    # Cape physics resources
│  └─ wings/           # Wing cosmetics
├─ tools/              # Build and maintenance tools
├─ docs/               # Documentation
└─ dist/               # Local build output (not committed)
```

Each cosmetic type is kept independent where possible. Files that need to modify the Minecraft player entity or are reused by multiple cosmetics belong in `src/shared/` so future cosmetics can be combined without maintaining several conflicting copies of `player.entity.json`.

## Capes

The cape collection is split into five resource packs to keep the in-game subpack selector manageable.

Release builds use the following names:

```text
Cape-Cosmetics-1.mcpack
Cape-Cosmetics-2.mcpack
Cape-Cosmetics-3.mcpack
Cape-Cosmetics-4.mcpack
Cape-Cosmetics-5.mcpack
```

The current manifests identify the author as `Riyoway`.

## Downloads

Packaged `.mcpack` builds are intended to be distributed through **GitHub Releases** rather than committed directly to the repository.

## Compatibility

The current cape packs are being developed against Minecraft Bedrock `1.26.45.x`.

## License

No open-source license has been assigned yet. Content in this repository should not be assumed to be freely relicensable until licensing and third-party asset attribution are finalized.
