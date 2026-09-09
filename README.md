# xiaobai-nixiangji · 小白逆袭计

> 个人 AI 概念学习资料库 · 由项目级 Skill `learn-concept` 生成 · 作者核查与维护

**在线预览(渲染效果)**:https://wdy2026.github.io/xiaobai-nixiangji/

## 这个仓库是什么

这是为温丹艺建立的个人学习仓库,用于沉淀 AI、数据与媒介相关概念的结构化学习卡片。
它同时是一个**可复用工具**:任何新概念,只要按 `learn-concept` Skill 的工作流跑一遍,都能得到一份风格统一、链接可核查、章节固定的 HTML 学习卡片。

- 上游 Skill:`.workbuddy/skills/learn-concept/SKILL.md`
- 已沉淀的概念卡片:`learning-materials/`
- 关系说明:`learning-materials/concept-relationship.html`

## 目录结构

```
xiaobai-nixiangji/
├── .workbuddy/
│   ├── skills/
│   │   └── learn-concept/
│   │       └── SKILL.md            # 项目级 Skill:输入 → 流程 → 输出 → 自检
│   └── concept-sources/            # 私人检索缓存(已加入 .gitignore)
├── learning-materials/
│   ├── agent.html                  # 概念卡片:Agent
│   ├── llm-context.html            # 概念卡片:大模型的上下文
│   ├── skill.html                  # 概念卡片:Skill
│   └── concept-relationship.html   # 三者关系图与对比
├── README.md
└── .gitignore
```

## 这是怎么"用到 AI"做出来的

### 第一步:让 AI 帮忙设计 Skill
我用对话让模型给出了一个 Skill 的初稿,然后**手动修改了以下部分**(这是必须做的人工核查):

1. **frontmatter 的 `description`**:模型初稿的触发词太宽泛,我改成更具体的"动词开头 + 名词结尾",避免误触发。
2. **自检清单**:模型只给了"看起来对不对"这种主观项,我改成了 7 条**可勾选、可机械验证**的条款。
3. **出处规则**:模型最初允许"模型自编示例",我加了一条硬约束 — **任何引用必须可点击打开,不能编论文标题**。
4. **隐私规则**:模型忽略了 .gitignore 的存在,我在 SKILL.md 末尾单写了一节"不向外部网络暴露用户输入"。

### 第二步:让 AI 跑 Skill 生成卡片
对 Agent、Context、Skill 三个概念,分别让 Skill 完整跑了一遍"拆解 → 查源 → 组织输出 → 自检 → 交付"。
**人工核查做了什么**:

- 每条引用链接都打开过一遍,剔除掉了不可访问的(原模型附了一条已 404 的博客链接,删了)。
- 把所有"也许 / 大概 / 应该说"式的兜底表述改成"未核验 - 仅作参考"。
- 在每个 HTML 文件顶部加了"作者核查 · 已完成"的 chip,让后续维护一眼能看到状态。

### 第三步:核对概念关系
`concept-relationship.html` 里的结论来自于我自己读 Agent / Context / Skill 三份卡片后写的判断,**不是模型直接给的**。我让模型做的只有:把结论整理成 SVG 图、把对比点排成表格。

## 如何在 WorkBuddy 中调用

1. 把这个仓库克隆到本地(或者直接拉 WorkBuddy 里同一个 workspace 也行)。
2. 在 WorkBuddy 项目根目录的会话里直接说:

   > 用 learn-concept 学习 RAG,我的先验是入门,目标是把原理讲给同学听。

3. Skill 会被加载,模型会按 SKILL.md 的"输入 → 流程 → 自检"流程跑,并落到 `learning-materials/rag.html`。

如果你想给 Skill 加新的"必须栏目",直接编辑 `.workbuddy/skills/learn-concept/SKILL.md`,以后再跑就会自动带上。

## 如何迭代

| 我想做什么                       | 动作                                                                  |
| -------------------------------- | --------------------------------------------------------------------- |
| 学一个新概念                      | 在会话里说"用 learn-concept 学习 X",拿到 HTML 卡片后自己核一遍        |
| 改 Skill 的输出栏目 / 风格        | 编辑 `SKILL.md`,栏目顺序与命名一并更新                              |
| 改卡片视觉                        | 我目前用的是深色 + 卡片化;每个 HTML 都用内联 CSS,改一个文件就好     |
| 跟别人分享                        | 仓库公开 → 给 GitHub URL 即可                                        |

## 评分自检(对照作业要求)

- [x] 项目级 Skill:`.workbuddy/skills/learn-concept/SKILL.md` 含 YAML frontmatter + 适用场景 + 输入 + 流程 + 输出 + 自检。
- [x] 三份概念学习资料:`agent.html`、`llm-context.html`、`skill.html`,每个含个人解释、核心机制、应用场景、概念辨析、可核查链接。
- [x] 概念关系:`concept-relationship.html`,SVG 图 + 表格 + 个人判断段落。
- [x] README:本文件,说明用途、Skill 调用、人工核查记录。
- [x] 安全:.gitignore 已排除 `.workbuddy/concept-sources/` 等私人目录;无 API Key、密码、学号、家庭地址等敏感信息。

## 许可

本仓库的 Markdown / HTML 内容以学习用途为主,引用第三方资源遵循对应来源的版权。
