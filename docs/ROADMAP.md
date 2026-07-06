# DevPilot Roadmap

## Phase 0: Project Bootstrap

Status: Done

- Initialize Vue 3 + Vite + TypeScript.
- Integrate Tauri 2.
- Add Windows Tauri build environment wrapper.
- Create base project structure.
- Add English and Chinese README files.

## Phase 1: Application Foundation

Status: Planned

- Define the main application layout.
- Add router setup under `src/router`.
- Add state management conventions under `src/stores`.
- Add shared frontend service conventions under `src/services`.
- Add shared type definitions under `src/types`.
- Add global style entry under `src/styles`.
- Define Tauri command organization under `src-tauri/src/commands`.

## Phase 2: Core Shell Experience

Status: Planned

- Build the first usable desktop shell.
- Add navigation and layout structure.
- Add a settings view.
- Add app metadata display.
- Add basic native command invocation from Vue to Tauri.
- Add frontend error and loading states.

## Phase 3: Developer Experience

Status: Planned

- Add development guide under `docs/guides`.
- Add architecture notes under `docs/architecture`.
- Add linting and formatting setup.
- Add test strategy.
- Add CI workflow under `.github`.

## Phase 4: Packaging And Release

Status: Planned

- Validate full `npm run tauri:build` installer packaging.
- Document release process.
- Add changelog discipline.
- Prepare app icons and metadata.
- Evaluate signing and update strategy.

## Backlog

- Auto update support.
- Persistent local configuration.
- Local database or file storage layer.
- Internationalization.
- Theme switching.
- Window state persistence.
