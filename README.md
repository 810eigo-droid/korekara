# これからの私の生き方 — 独立LP

## 正式な保存先
https://github.com/810eigo-droid/korekara

画像の追加先：images/
公開用画像：dist/images/
LP本体：dist/index.html
デザイン：dist/style.css
アニメーション：dist/ambient.js、dist/reveal.js
先頭へ戻るボタン：dist/top.js

## バージョン管理
V1（2026-09-18の修正依頼前）は archive/v1/ と GitHub の v1 ブランチに保存しています。
以後の修正は index.html と dist/ を上書きして進め、同じ公開URLで新しいLPを確認してもらいます。
修正作業は claude/korekara-v2 ブランチで行い、確認後に main へ取り込みます。

## 公開サイト
クライアント確認用URL（GitHub Pages）：https://810eigo-droid.github.io/korekara/

GitHub Pages は main ブランチ直下の index.html を表示します。
そのため LP の HTML は次の2か所にあり、修正時は両方を同じ内容に更新します。
- index.html（リポジトリ直下）：GitHub Pages 用。CSS・JS・画像は dist/ 内のものを dist/ 付きパスで参照。
- dist/index.html：Sites 用。CSS・JS・画像は同じ dist/ 内を相対パスで参照。
CSS・JS・画像の実体は dist/ にひとつだけなので、そちらは1か所を直せば両方に反映されます。

main に push すれば GitHub Pages は自動で更新されます（反映まで数分）。
作業ブランチに push しただけでは公開URLは変わりません。

旧URL（Sites）：https://korekara-counseling.ricky-o.chatgpt.site/
Sites は .openai/hosting.json の project_id を維持し、dist/ を公開します。
Sites への反映は手動の公開操作が必要です。

## 申込み
マイスピーのLP作成ブロックは使いません。申込み・リスト管理のみマイスピーを使用します。
申込みURLは未提供です。フローティングバーは現在ページ内の #session へ移動し、
料金カードの申込みボタンは受付準備中です。URL受領後にリンクを接続します。

## 原稿と画像
設計書：DESIGN-FRAMEWORK.md
感想4件は架空の仮原稿で、各カードに SAMPLE／仮原稿を明記しています。
プロフィール・正式原稿・申込み条件など、未確定箇所は確認後に更新します。
ユーザー提供のPC/SP画像は640pxで切り替え、基本は画像全体を表示します。
object5-sp.webp は images/ に保存済みですが、現在の公開LPへの組み込みは未実施です。

## リポジトリ移行
2026-09-15に bunjino-jyomon の codex/korekara-counseling-lp ブランチから、
korekara-counseling フォルダの内容をこのリポジトリ直下へ移行しました。
以後はこのリポジトリで管理します。