# DevPilot PRD

## 1. 背景

DevPilot 当前是一个基于 Vue 3、Vite、TypeScript 和 Tauri 2 的桌面应用骨架。项目目标是先建立稳定的跨端桌面应用基础，再逐步补充具体业务能力。

## 2. 产品定位

DevPilot 定位为本地优先的桌面工具应用。初期重点不是复杂业务功能，而是搭建可维护、可运行、可扩展的应用底座。

## 3. 目标用户

- 项目开发者：需要一个清晰的 Vue + Tauri 桌面应用起点。
- 后续功能使用者：需要稳定、响应快、可离线运行的桌面工具。

## 4. 初版目标

- 建立 Vue 3 + Vite + TypeScript 前端工程。
- 集成 Tauri 2 桌面运行时。
- 支持 Windows 本地开发、构建和启动验证。
- 建立基础目录结构，方便后续模块扩展。
- 提供 README、PRD、ROADMAP、CHANGELOG 等基础文档。

## 5. 功能范围

### 5.1 已完成

- 前端工程初始化。
- Tauri 工程初始化。
- Vite 开发端口固定为 `1420`。
- Windows Tauri 构建环境脚本 `scripts/tauri-env.ps1`。
- 基础目录结构。
- 英文和中文 README。

### 5.2 下一阶段

- 设计应用主界面布局。
- 建立路由、状态管理、服务层约定。
- 定义 Tauri command 调用规范。
- 增加基础设置页。
- 增加开发和构建文档。

## 6. 非功能需求

- 可维护性：目录结构清晰，模块职责明确。
- 可运行性：开发环境和构建命令可复现。
- 可扩展性：前端和 Tauri 后端都预留服务、命令、类型目录。
- 本地优先：核心能力优先考虑本地运行和本地数据。

## 7. 技术约束

- 前端使用 Vue 3 + TypeScript。
- 构建工具使用 Vite。
- 桌面运行时使用 Tauri 2。
- Windows 构建依赖 Rust、Cargo、WebView2、Visual Studio Build Tools C++ 工作负载和 Windows SDK。

## 8. 验收标准

- `npm install` 能安装项目依赖。
- `npm run build` 能完成前端构建。
- `npm run tauri:build:no-bundle` 能生成桌面可执行文件。
- 生成的 `src-tauri/target/release/devpilot.exe` 可以正常启动。
- 文档能说明项目结构、环境要求和常用命令。

## 9. 暂不包含

- 明确的业务功能闭环。
- 用户账号体系。
- 云端同步。
- 自动更新。
- 安装包签名。
