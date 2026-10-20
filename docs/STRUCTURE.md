# Repository Structure

The repository is organized by cosmetic type instead of by release file.

```text
src/
├─ shared/
├─ capes/
│  ├─ pack-1/
│  ├─ pack-2/
│  ├─ pack-3/
│  ├─ pack-4/
│  └─ pack-5/
├─ cape-physics/
└─ wings/
```

## `src/shared`

Resources that affect the Minecraft player globally or are reused by more than one cosmetic type.

Typical examples:

- `entity/player.entity.json`
- shared animation/controller definitions
- shared render-controller fragments
- shared geometry

Keeping these files centralized is important because multiple independent copies of `player.entity.json` can easily conflict when capes, cape physics, and wings are developed together.

## `src/capes`

Cape-specific resources. The current cape library remains split into five packs so the Bedrock subpack selector does not contain the entire collection in a single pack.

Each pack directory can contain the normal Bedrock resource-pack layout such as `manifest.json`, `subpacks/`, `textures/`, `animations/`, and `render_controllers/`.

## `src/cape-physics`

Cape motion/physics experiments and overrides. These should avoid duplicating player files already owned by `src/shared` where possible.

## `src/wings`

Wing geometry, textures, animations, and render-controller resources.

## `tools`

Scripts for validation, packing `.mcpack` files, checking references, and future automated release builds.

## `dist`

Generated `.mcpack`/`.zip` output only. This directory is ignored by Git and release artifacts should be published through GitHub Releases.
