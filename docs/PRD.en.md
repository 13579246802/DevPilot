# DevPilot PRD

## 1. Background

DevPilot is currently a desktop application scaffold built with Vue 3, Vite, TypeScript, and Tauri 2. The first goal is to establish a stable, runnable, and extensible desktop application foundation before adding concrete product features.

## 2. Product Positioning

DevPilot is positioned as a local-first desktop tool application. The early focus is not a complete business workflow, but a maintainable application base that can support future modules.

## 3. Target Users

- Project developers who need a clear Vue + Tauri desktop application starting point.
- Future end users who need a stable, fast, and offline-capable desktop tool.

## 4. Initial Goals

- Set up a Vue 3 + Vite + TypeScript frontend project.
- Integrate the Tauri 2 desktop runtime.
- Support Windows local development, build, and launch verification.
- Establish a base directory structure for future modules.
- Provide foundational documents including README, PRD, ROADMAP, and CHANGELOG.

## 5. Scope

### 5.1 Completed

- Frontend project initialization.
- Tauri project initialization.
- Vite development port fixed to `1420`.
- Windows Tauri build environment script at `scripts/tauri-env.ps1`.
- Base directory structure.
- English and Chinese README files.

### 5.2 Next Stage

- Design the main application layout.
- Establish conventions for routing, state management, and service layers.
- Define the Tauri command invocation pattern.
- Add a basic settings page.
- Add development and build documentation.

## 6. Non-Functional Requirements

- Maintainability: clear directory structure and module responsibilities.
- Runability: reproducible development and build commands.
- Extensibility: reserved frontend and Tauri backend directories for services, commands, and types.
- Local-first behavior: core capabilities should prioritize local execution and local data.

## 7. Technical Constraints

- Frontend uses Vue 3 + TypeScript.
- Build tooling uses Vite.
- Desktop runtime uses Tauri 2.
- Windows builds require Rust, Cargo, WebView2, Visual Studio Build Tools with the C++ workload, and Windows SDK.

## 8. Acceptance Criteria

- `npm install` installs project dependencies.
- `npm run build` completes the frontend build.
- `npm run tauri:build:no-bundle` generates a desktop executable.
- `src-tauri/target/release/devpilot.exe` can start successfully.
- Documentation explains the project structure, environment requirements, and common commands.

## 9. Out of Scope

- A complete business feature workflow.
- User accounts.
- Cloud sync.
- Auto update.
- Installer signing.
