#!/bin/sh
# dist/index.html（Sites用）から、リポジトリ直下の index.html（GitHub Pages用）を生成する。
# 参照パスに dist/ を付けるだけで、内容は同一。修正後は必ず実行する。
cd "$(dirname "$0")/.." || exit 1
sed -e 's#href="style.css"#href="dist/style.css"#g' \
    -e 's#src="images/#src="dist/images/#g' \
    -e 's#srcset="images/#srcset="dist/images/#g' \
    -e 's#src="\(top\|ambient\|reveal\)\.js"#src="dist/\1.js"#g' \
    dist/index.html > index.html
echo "index.html を dist/index.html から再生成しました。"
