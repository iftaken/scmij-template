# Supply Chain Management: An International Journal (SCMIJ) LaTeX Template

[![GitHub release](https://img.shields.io/github/release/iftaken/scmij-template/all.svg)](https://github.com/iftaken/scmij-template/releases)
[![Compile](https://github.com/iftaken/scmij-template/actions/workflows/compile.yml/badge.svg)](https://github.com/iftaken/scmij-template/actions/workflows/compile.yml)

心河Paper LaTeX 模板，适配 Emerald Publishing 旗下 **Supply Chain Management: An International Journal (SCMIJ)** 期刊格式要求。

## 关于期刊

Supply Chain Management: An International Journal (SCMIJ) 是供应链管理领域的国际权威期刊，由 Emerald Publishing 出版。该期刊发表关于可持续供应链、跨境供应链、供应链韧性、循环经济、供应链风险管理等方向的高质量研究。

- **出版商**: Emerald Publishing
- **ISSN**: 1359-8546
- **官网**: https://www.emerald.com/insight/publication/issn/1359-8546
- **范围**: 可持续供应链管理、供应链韧性、跨境供应链、循环经济、绿色物流、供应商关系管理

## 快速开始

### 在线编译（推荐）

点击 [Use this template](https://github.com/iftaken/scmij-template/generate) 创建自己的论文仓库，GitHub Actions 会自动编译并在 Releases 中发布 PDF。

### 本地编译

#### 使用 Tectonic

```bash
tectonic -X compile main.tex
```

#### 使用 latexmk

```bash
latexmk -pdf main.tex
```

#### 使用 Make

```bash
make          # 编译生成 main.pdf
make clean    # 清理中间文件
```

### Docker 编译

```bash
docker run --rm --platform linux/amd64 \
  -v $(pwd):/app \
  -v ~/.cache/paper-tectonic:/root/.cache/Tectonic \
  crpi-b75iph3qtzyryyvz.cn-hangzhou.personal.cr.aliyuncs.com/paper-prod/paper-sandbox-cli:latest \
  tectonic -X compile main.tex
```

## 文件结构

```
.
├── main.tex              # 论文主文件
├── main.pdf              # 编译输出
├── references.bib        # 参考文献数据库
├── Makefile              # 编译快捷命令
├── latexmkrc             # latexmk 配置
├── init.sh               # 初始化脚本
├── .gitignore            # 排除编译产物
└── AGENTS.md             # Agent 配置
```

## 模板说明

**重要**：Emerald 官方的 `emerald.cls` 文档类不可公开分发。本模板使用标准
`article` 类，格式设置参考 Emerald 投稿指南。

### 格式特点

| 设置 | 值 |
|------|-----|
| 文档类 | article（标准 LaTeX） |
| 字号 | 12pt |
| 纸张 | A4 |
| 字体 | Times New Roman（mathptmx） |
| 行距 | 双倍行距（投稿用） |
| 参考文献样式 | Harvard 作者-年制（natbib + apa） |
| 页边距 | 2.5 cm 四周 |

### 获取 emerald.cls

在最终投稿前，建议从 Emerald Author Services 获取官方文档类：
1. 访问 [Emerald Author Guidelines](https://www.emeraldgrouppublishing.com/publish-with-us/author-policies/author-guidelines)
2. 下载 SCMIJ 专属模板包
3. 将 `emerald.cls` 放入项目目录并替换第一篇的文档类声明

## 示例内容

模板包含一篇关于「跨境可持续供应链韧性：多利益相关者视角下的风险管理与循环经济整合」的示例论文，涉及：

- 可持续供应链管理（SSCM）
- 供应链韧性与风险管理
- 跨境供应链运营
- 循环经济与闭环供应链
- 多利益相关者治理
- 数字化供应链生态系统

## 许可

本仓库所有文件采用 MIT License。
