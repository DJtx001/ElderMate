# 养老智伴（ElderMate）智慧养老护理服务平台

基于 RuoYi-Vue 框架二次开发的智慧养老后台管理系统，集成 AI 大模型对话助手，提供护理管理、智能监测与 AI 问答等能力。

## 功能特性

- **小戴 AI 对话助手**：基于 Spring AI 接入阿里云百炼（DashScope 兼容模式）通义千问模型，支持 SSE 流式对话与 Tool Calling 工具调用（如天气查询）
- **护理管理**：护理计划、护理项目、护理级别、护理任务的下发与执行跟踪
- **机构管理**：楼层、房间、床位、老人入住与合同管理
- **智能监测**：智能床垫/设备数据接入、预警数据与预警规则管理
- **健康档案**：老人健康评估、健康档案管理
- **系统管理**：用户、角色、菜单、部门、字典、参数、操作日志、登录日志等（RuoYi 标准能力）
- **基础设施**：定时任务（Quartz）、代码生成、缓存监控、服务监控

## 技术栈

| 层次 | 技术 |
| --- | --- |
| 后端框架 | Spring Boot 3.5.0、Spring Security + JWT、MyBatis / PageHelper |
| AI 能力 | Spring AI 1.1.2（OpenAI 兼容模式接入 DashScope） |
| 数据存储 | MySQL、Redis |
| 前端 | Vue 3.4 + Vite 5 + Element Plus 2.4 + Pinia |
| 其他 | Quartz、springdoc-openapi（Swagger）、WebSocket、阿里云 OSS |

## 项目结构

```
ylzb
├── ylzb-admin             # Web 服务入口（启动模块，端口 8080）
├── ylzb-framework         # 框架核心：安全、拦截、数据源等配置
├── ylzb-system            # 系统模块：用户/角色/菜单/日志
├── ylzb-nursing-platform  # 养老护理业务模块（含 AI 对话助手）
├── ylzb-quartz            # 定时任务模块
├── ylzb-generator         # 代码生成模块
├── ylzb-common            # 公共模块：工具类、常量、异常
├── ylzb-oss               # 对象存储模块（阿里云 OSS）
├── ylzb_ui                # 前端工程（Vue 3）
└── sql                    # 数据库初始化脚本
```

## 快速开始

### 环境要求

- JDK 17+
- MySQL 8.x、Redis 6.x
- Node.js 18+（前端）

### 1. 后端

1. 创建数据库并导入 `sql/ylzb.sql`、`sql/quartz.sql`
2. 修改 `ylzb-admin/src/main/resources/application-dev.yml` 中的数据库与 Redis 地址
3. 配置 AI 访问密钥（二选一）：
   - 设置环境变量 `DASHSCOPE_API_KEY`
   - 或在 `ylzb-admin/src/main/resources/` 下新建 `local-secrets.yml`（已被 .gitignore 忽略，不会提交）：

     ```yaml
     spring:
       ai:
         openai:
           api-key: 你的百炼 API Key
     ```

4. 启动 `YlzbApplication`，或执行 `bin/run.bat`

### 2. 前端

```bash
cd ylzb_ui
npm install
npm run dev
```

浏览器访问 `http://localhost:80`（默认账号 admin / admin123）。

### 3. AI 对话接口

```
GET http://localhost:8080/ai/chat?prompt=你好，介绍一下自己
```

返回 `text/event-stream` 流式文本，前端以打字机效果逐段呈现。

## 相关说明

- 本项目基于 [RuoYi-Vue](https://gitee.com/y_project/RuoYi-Vue)（MIT License）开发，遵循开源协议，仅用于学习交流
- AI 功能依赖[阿里云百炼](https://bailian.console.aliyun.com/)平台提供的模型服务，请自行申请 API Key 并注意密钥安全
