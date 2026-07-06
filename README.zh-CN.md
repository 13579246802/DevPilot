# DevPilot

DevPilot 是一个基于 Vue 3、Vite、TypeScript 和 Tauri 2 的桌面应用项目骨架。

## 技术栈

- Vue 3：前端界面开发
- Vite：开发服务器与前端构建
- TypeScript：类型检查
- Tauri 2：桌面应用运行时
- Rust：原生桌面外壳

## 环境要求

- Node.js 22+
- npm 10+
- Rust 和 Cargo
- WebView2 Runtime
- 安装了 C++ 工作负载和 Windows SDK 的 Visual Studio Build Tools

在 Windows 上，Tauri 相关 npm 脚本会通过 `scripts/tauri-env.ps1` 自动加载 Visual Studio 编译环境，然后再执行 Tauri 命令。

## 快速开始

安装依赖：

```bash
npm install
```

启动 Web 开发服务：

```bash
npm run dev
```

启动 Tauri 桌面应用开发模式：

```bash
npm run tauri:dev
```

构建前端：

```bash
npm run build
```

构建 Tauri 桌面应用，但不生成安装包：

```bash
npm run tauri:build:no-bundle
```

构建 Tauri 桌面应用并生成安装包：

```bash
npm run tauri:build
```

## 项目结构

```text
DevPilot/
  assets/              项目共享设计资源和静态源资源
  docs/                项目文档
  public/              Vite 公共资源目录
  scripts/             开发与构建辅助脚本
  src/                 Vue 前端源码
    assets/            前端专用资源
    components/        可复用 Vue 组件
    composables/       Vue Composition API 工具
    layouts/           页面和应用布局
    router/            路由配置
    services/          前端服务客户端
    stores/            状态管理模块
    styles/            全局和共享样式
    types/             TypeScript 类型声明
    utils/             前端通用工具
    views/             路由级页面
  src-tauri/           Tauri 和 Rust 桌面端源码
    capabilities/      Tauri 权限能力配置
    icons/             应用图标
    src/               Rust 源码
      commands/        Tauri 命令处理器
      services/        原生侧服务
  .github/             GitHub 工作流和仓库元信息
```

## 脚本说明

- `npm run dev`：启动 Vite 开发服务器，端口为 `1420`。
- `npm run build`：执行 Vue TypeScript 检查，并生成前端生产构建。
- `npm run preview`：预览 Vite 生产构建。
- `npm run tauri:dev`：以开发模式启动 Tauri 桌面应用。
- `npm run tauri:build:no-bundle`：构建桌面可执行文件，但不打包安装器。
- `npm run tauri:build`：构建并打包桌面应用。

## 验证

当前项目骨架已通过以下命令验证：

```bash
npm run build
npm run tauri:build:no-bundle
```

生成的桌面可执行文件位于：

```text
src-tauri/target/release/devpilot.exe
```
