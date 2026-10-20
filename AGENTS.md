# Agent instructions

## Web UI

The web catalog lives in `web/`.

For visual/UI work, use the `resend/design-skills` skill collection as the design reference. Install or refresh it with:

```bash
cd web
npm run design:install
```

Use the design principles for layout, hierarchy, contrast, typography and interaction quality. Do not use Resend logos, wordmarks or other trademarks in MCBE Cosmetics, and do not imply affiliation with Resend.

Keep the UI dark-first, restrained and functional. Avoid unnecessary popups, promotional UI, decorative clutter and generated-looking filler copy.

## Resource packs

Finished unpacked packs belong under `resource_packs/<category>/`. Do not move generated `.mcpack` archives into source directories; publish them as release assets instead.

Third-party cosmetic textures must keep attribution and must not inherit a repository-wide software license by accident.
