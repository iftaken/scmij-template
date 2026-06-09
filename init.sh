#!/bin/bash
# ============================================================
# SCMIJ Template - 初始化脚本
# Supply Chain Management: An International Journal
# Emerald Publishing
# ============================================================

set -e

echo "=== SCMIJ Template 初始化 ==="
echo "期刊: Supply Chain Management: An International Journal"
echo "出版商: Emerald Publishing"
echo "模板: article (emerald.cls 不可公开分发)"
echo ""

# 检查必要文件
echo "检查必要文件..."
if [ ! -f "main.tex" ]; then
    echo "错误: main.tex 不存在"
    exit 1
fi
echo "  ✓ main.tex"

if [ ! -f "references.bib" ]; then
    echo "错误: references.bib 不存在"
    exit 1
fi
echo "  ✓ references.bib"

# 创建字体目录
if [ ! -d "font" ]; then
    mkdir -p font
    echo "  ✓ 创建 font/ 目录"
fi

echo ""
echo "初始化完成。运行 'make' 编译模板。"
echo ""
echo "提示: 最终投稿前，请从 Emerald Author Services 获取 emerald.cls"
echo "      https://www.emeraldgrouppublishing.com/publish-with-us/author-policies/author-guidelines"
