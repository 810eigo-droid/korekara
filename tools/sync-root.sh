#!/bin/sh
# 1) dist/index.html 内の style.css / *.js 参照にバージョン（時刻）を付けてキャッシュを無効化する
# 2) dist/index.html（Sites用）から、リポジトリ直下の index.html（GitHub Pages用）を生成する
cd "$(dirname "$0")/.." || exit 1
V=$(date -u +%Y%m%d%H%M)
sed -i -E \
  -e "s#href=\"style\.css(\?v=[0-9]+)?\"#href=\"style.css?v=$V\"#g" \
  -e "s#src=\"(top|ambient|reveal|menu)\.js(\?v=[0-9]+)?\"#src=\"\1.js?v=$V\"#g" \
  dist/index.html
sed -E \
  -e 's#href="style\.css#href="dist/style.css#g' \
  -e 's#src="images/#src="dist/images/#g' \
  -e 's#srcset="images/#srcset="dist/images/#g' \
  -e 's#src="(top|ambient|reveal|menu)\.js#src="dist/\1.js#g' \
  dist/index.html > index.html
echo "assets v=$V / index.html を dist/index.html から再生成しました。"
