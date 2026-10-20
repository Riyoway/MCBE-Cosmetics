# MCBE Cosmetics

Client-side cosmetic resource packs and a browsable catalog for Minecraft Bedrock Edition.

Maintained by [Riyoway](https://github.com/Riyoway).

## Project status

| Category | Status |
| --- | --- |
| Capes | In progress |
| Cape Physics | Planned |
| Wings | Planned |
| Web catalog | Scaffolded |

## Repository layout

```text
MCBE-Cosmetics/
├─ resource_packs/        # Finished, unpacked Bedrock resource packs
│  ├─ capes/
│  ├─ cape-physics/
│  └─ wings/
├─ catalog/               # Metadata consumed by the web browser
├─ web/                   # React + TypeScript + Vite + Tailwind CSS UI
├─ scripts/               # Repository maintenance/build scripts
├─ docs/                  # Project documentation
└─ .github/workflows/     # CI
```

`resource_packs/` contains Minecraft-ready pack directories. Packaged `.mcpack` files belong in GitHub Releases rather than the repository root.

## Web catalog

The browser lives in [`web/`](./web). It is set up with React, TypeScript, Vite and Tailwind CSS v4.

UI work is expected to use [`resend/design-skills`](https://github.com/resend/design-skills) as the design reference. The repository includes agent instructions for using the skill without copying Resend trademarks or presenting MCBE Cosmetics as a Resend product.

```bash
cd web
npm install
npm run design:install
npm run dev
```

## Capes

The current cape collection is split into five packs so the Bedrock subpack selector stays manageable:

```text
Cape-Cosmetics-1.mcpack
Cape-Cosmetics-2.mcpack
Cape-Cosmetics-3.mcpack
Cape-Cosmetics-4.mcpack
Cape-Cosmetics-5.mcpack
```

The original archive contains third-party cape material. Do not apply a blanket open-source license to those assets. See [`THIRD_PARTY.md`](./THIRD_PARTY.md).

## Compatibility

Current cape work targets Minecraft Bedrock `1.26.45.x`.

## Downloads

Installable `.mcpack` builds are intended to be published through GitHub Releases.

## License

No repository-wide license currently applies. Third-party cosmetic assets must retain their original attribution and terms.
