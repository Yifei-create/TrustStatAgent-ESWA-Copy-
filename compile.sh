#!/usr/bin/env bash
# 本地编译论文：build/elsarticle-template-harv.pdf
# -Z search-path=. 让 \includegraphics{figures/...} 能解析到仓库根目录的 figures/
# （与 Overleaf 的搜索路径行为一致）
set -e
cd "$(dirname "$0")"
mkdir -p build
TECTONIC="$HOME/.conda/envs/latex-preview/bin/tectonic"
"$TECTONIC" -Z search-path=. --keep-intermediates --keep-logs --outdir build \
    elsarticle/elsarticle-template-harv.tex
echo "OK: build/elsarticle-template-harv.pdf"
