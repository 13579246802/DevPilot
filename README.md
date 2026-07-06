# DevPilot

DevPilot is a desktop application scaffold built with Vue 3, Vite, TypeScript, and Tauri 2.

## Tech Stack

- Vue 3 for the frontend
- Vite for development and bundling
- TypeScript for type checking
- Tauri 2 for the desktop runtime
- Rust for the native shell

## Requirements

- Node.js 22+
- npm 10+
- Rust and Cargo
- WebView2 Runtime
- Visual Studio Build Tools with the C++ workload and Windows SDK

On Windows, the Tauri scripts use `scripts/tauri-env.ps1` to load the Visual Studio build environment before running Tauri commands.

## Getting Started

Install dependencies:

```bash
npm install
```

Run the web app:

```bash
npm run dev
```

Run the Tauri desktop app:

```bash
npm run tauri:dev
```

Build the frontend:

```bash
npm run build
```

Build the Tauri app without packaging installers:

```bash
npm run tauri:build:no-bundle
```

Build the Tauri app and generate bundles:

```bash
npm run tauri:build
```

## Project Structure

```text
DevPilot/
  assets/              Shared design and static source assets
  docs/                Project documentation
  public/              Vite public assets
  scripts/             Development and build helper scripts
  src/                 Vue frontend source
    assets/            Frontend-only assets
    components/        Reusable Vue components
    composables/       Vue composition utilities
    layouts/           Page and app layouts
    router/            Routing setup
    services/          Frontend service clients
    stores/            State management modules
    styles/            Global and shared styles
    types/             TypeScript type declarations
    utils/             Shared frontend utilities
    views/             Route-level views
  src-tauri/           Tauri and Rust desktop source
    capabilities/      Tauri permission capability files
    icons/             Application icons
    src/               Rust source code
      commands/        Tauri command handlers
      services/        Native-side services
  .github/             GitHub workflows and repository metadata
```

## Scripts

- `npm run dev` starts the Vite dev server on port `1420`.
- `npm run build` runs Vue TypeScript checking and creates the frontend production build.
- `npm run preview` previews the Vite production build.
- `npm run tauri:dev` starts the Tauri desktop app in development mode.
- `npm run tauri:build:no-bundle` builds the desktop executable without installer packaging.
- `npm run tauri:build` builds and packages the desktop application.

## Verification

The current scaffold has been verified with:

```bash
npm run build
npm run tauri:build:no-bundle
```

The generated executable is created at:

```text
src-tauri/target/release/devpilot.exe
```
