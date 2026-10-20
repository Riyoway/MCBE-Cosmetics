# Capes

Source area for the Bedrock cape collection.

The collection is intentionally split into five packs for a more manageable in-game subpack selector:

```text
src/capes/
├─ pack-1/
├─ pack-2/
├─ pack-3/
├─ pack-4/
└─ pack-5/
```

Packaged builds are distributed as `Cape-Cosmetics-1.mcpack` through `Cape-Cosmetics-5.mcpack` via GitHub Releases.

Current manifests use `Riyoway` as the author.

Do not duplicate shared player/entity resources here unless a cape-specific override is actually required; common player-side changes belong in `src/shared/`.
