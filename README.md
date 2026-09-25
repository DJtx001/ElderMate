# ElderMate · 智慧养老护理服务平台

基于若依 RuoYi-Vue 3.9.2（springboot3 分支）深度定制的前后端分离智慧养老护理服务平台，持续接入 AI 能力与 Agent 智能体。

## ✨ 平台特性

- 🏥 **护理业务管理** — 护理项目维护、图片上传、状态启停
- 🔐 **企业级基础能力**（若依内置）— 用户/角色/部门/菜单权限、数据权限、操作日志、定时任务、代码生成、服务监控
- 📡 **在线接口文档** — Knife4j 增强 UI，支持在线调试与离线导出
- 🤖 **AI 智能体（规划中）** — 基于 SpringAI 的智能问答、护理知识库 RAG、Agent 自动办理业务

## 🛠 技术栈

| 层次 | 技术 |
|------|------|
| 后端 | Java 17 · Spring Boot 3.5 · Spring Security + JWT · MyBatis · Redis |
| 前端 | Vue3 · Vite · Element Plus · Pinia |
| 文档 | SpringDoc + Knife4j 4.5 |
| AI（规划） | SpringAI · Agent 工具调用 · RAG |

## 📁 目录结构

```
├── ylzb-admin              # 启动模块（端口 8080）
├── ylzb-framework          # 框架核心（安全、拦截）
├── ylzb-system             # 系统管理模块
├── ylzb-nursing-platform   # 护理业务模块（com.ylzb.nursing）
├── ylzb-quartz / generator / common
└── ylzbVue                 # 前端（Vue3 + Vite，端口 80，代理 /dev-api → 8080）
```

## 🚀 快速启动

**环境要求**：JDK 17 · MySQL 8 · Redis · Node.js 18+

```bash
# 1. 导入数据库：执行 sql/ 目录下的脚本（库名、账号密码按 ylzb-admin 配置文件调整）

# 2. 启动后端：IDEA 中运行 ylzb-admin 的 RuoYiApplication

# 3. 启动前端
cd ylzbVue
npm install
npm run dev
```

浏览器访问 `http://localhost`，默认账号 `admin / admin123`。

接口文档：登录后进入 **系统工具 → 系统接口**（Knife4j）。

## 📌 Roadmap

- [x] 护理项目管理
- [ ] 老人档案 / 护理计划 / 服务工单
- [ ] AI 对话助手（SSE 流式输出）
- [ ] Agent 工具调用（查询业务数据、自动办理）
- [ ] 护理领域 RAG 知识库
