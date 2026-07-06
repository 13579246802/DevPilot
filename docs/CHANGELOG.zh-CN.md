# 更新日志

DevPilot 的重要变更会记录在此文件中。

项目早期采用简单的时间顺序更新日志格式。

## 未发布

### 新增

- 新增 Vue 3 + Vite + TypeScript 项目骨架。
- 新增 Tauri 2 桌面应用集成。
- 新增 Windows Tauri 环境包装脚本 `scripts/tauri-env.ps1`。
- 新增 `src/` 下的基础前端目录。
- 新增 `src-tauri/src/` 下的基础 Tauri 后端目录。
- 新增共享目录：`assets/`、`docs/`、`public/`、`scripts/`。
- 新增英文 README。
- 新增中文 README。
- 新增初版 PRD、路线图和更新日志文档。
- 新增 PRD、路线图和更新日志的英文版与中文版。

### 已验证

- 已通过 `npm run build` 验证前端构建。
- 已通过 `npm run tauri:build:no-bundle` 验证 Tauri 应用无安装包构建。
- 已验证生成的 Windows 桌面可执行文件可以正常启动。

### 说明

- 完整安装包打包命令 `npm run tauri:build` 仍待最终发布验证。
