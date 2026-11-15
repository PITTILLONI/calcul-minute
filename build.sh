#!/bin/sh
# Assemble index.html (la web app installable) à partir de calcul-minute.html (le fragment publié comme artifact Claude).
# Usage : sh build.sh
set -e
cd "$(dirname "$0")"
SPLIT=$(grep -n '<div id="app"></div>' calcul-minute.html | head -1 | cut -d: -f1)
{
cat <<'HEAD'
<!doctype html>
<html lang="fr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">
<meta name="theme-color" content="#1d2824">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="Calcul Minute">
<meta name="description" content="Entraînement quotidien au calcul mental, 3 minutes par jour.">
<link rel="manifest" href="manifest.webmanifest">
<link rel="icon" href="icons/icon-192.png">
<link rel="apple-touch-icon" href="icons/apple-touch-icon.png">
<style>@font-face{font-family:'Anton';font-weight:400;font-display:swap;src:url(fonts/anton.woff2) format('woff2')}@font-face{font-family:'Work Sans';font-weight:400 600;font-display:swap;src:url(fonts/work-sans.woff2) format('woff2')}</style>
<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}</style>
HEAD
# Les polices sont servies depuis fonts/ : on retire les liens Google Fonts, utiles seulement à l'artifact.
head -n $((SPLIT-1)) calcul-minute.html | grep -v 'fonts.googleapis.com' | grep -v 'fonts.gstatic.com'
printf '</head>\n<body>\n'
tail -n +"$SPLIT" calcul-minute.html
cat <<'TAIL'
<script>if('serviceWorker' in navigator){addEventListener('load',function(){navigator.serviceWorker.register('sw.js').catch(function(){});});}</script>
</body>
</html>
TAIL
} > index.html
echo "index.html assemblé"
