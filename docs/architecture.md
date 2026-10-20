# Repository architecture

MCBE Cosmetics keeps distributable Minecraft content separate from the browser UI and its metadata.

```text
resource_packs/   Finished unpacked Minecraft resource packs
catalog/          Small metadata files for browsing/searching cosmetics
web/              Browser UI
scripts/          Automation for catalog generation and packaging
docs/             Documentation
```

## Resource packs

Each category owns complete resource packs. There is no shared runtime pack directory because users need independently usable finished packs.

```text
resource_packs/
├─ capes/
│  ├─ Cape-Cosmetics-1/
│  ├─ Cape-Cosmetics-2/
│  ├─ Cape-Cosmetics-3/
│  ├─ Cape-Cosmetics-4/
│  └─ Cape-Cosmetics-5/
├─ cape-physics/
└─ wings/
```

## Catalog

`catalog/` is for web-facing metadata such as cosmetic ID, display name, category, pack, animation state, tags and preview paths. It should be generated from the resource-pack source where possible rather than maintained by hand.

## Releases

The repository stores unpacked source/finished pack folders. Installable `.mcpack` archives should be attached to GitHub Releases.
