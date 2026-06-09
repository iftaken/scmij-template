# ============================================================
# SCMIJ Template - Makefile
# Supply Chain Management: An International Journal
# Emerald Publishing
# ============================================================

MAIN = main
SHELL = bash

.PHONY : main clean cleanall help

.DEFAULT_GOAL := help

help: ## 显示本 Makefile 常用命令帮助
	@grep -E '^[a-zA-Z_-]+ :.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = " :.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'

main : $(MAIN).pdf ## 编译论文 (main.pdf)

$(MAIN).pdf : main.tex references.bib FORCE_MAKE
	tectonic -X compile main.tex

FORCE_MAKE:

clean : ## 清理编译生成的中间文件
	@rm -f *.aux *.log *.out *.toc *.bbl *.blg *.synctex.gz *.fdb_latexmk *.fls *.spl *.glo *.gls *.alg *.idx *.ind *.ilg *.brf *.nav *.snm *.vrb *.xdy *.run.xml
	@echo "中间文件已清理"

cleanall : clean ## 清理所有生成的文件（包括 PDF）
	@rm -f $(MAIN).pdf
	@echo "全部文件已清理（含 PDF）"

init : ## 运行初始化脚本
	bash init.sh
