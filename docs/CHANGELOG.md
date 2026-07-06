# Changelog

All notable changes to DevPilot will be documented in this file.

This project follows a simple chronological changelog format during early development.

## Unreleased

### Added

- Added Vue 3 + Vite + TypeScript project scaffold.
- Added Tauri 2 desktop integration.
- Added Windows Tauri environment wrapper script at `scripts/tauri-env.ps1`.
- Added base frontend directories under `src/`.
- Added base Tauri backend directories under `src-tauri/src/`.
- Added shared directories: `assets/`, `docs/`, `public/`, and `scripts/`.
- Added English README.
- Added Chinese README.
- Added initial PRD, roadmap, and changelog documents.

### Verified

- Verified frontend build with `npm run build`.
- Verified Tauri application build without bundling using `npm run tauri:build:no-bundle`.
- Verified generated desktop executable can start on Windows.

### Notes

- Full installer packaging with `npm run tauri:build` is still pending final release validation.
