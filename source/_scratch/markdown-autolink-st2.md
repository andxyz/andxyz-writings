
add urlize to my list of extensions for Markdown preview

```bash
curl https://raw.github.com/r0wb0t/markdown-urlize/master/urlize.py -o ~/Desktop/urlize.py
mv ~/Desktop/urlize.py ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Markdown\ Preview/markdown/extensions/urlize.py

cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Markdown\ Preview/markdown/extensions
sudo python2.6 -m compileall .
```

checkout into pandown
