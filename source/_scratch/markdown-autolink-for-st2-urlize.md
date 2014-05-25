
add urlize to my list of extensions for Markdown preview (when I use "Markdown Preview: Python Markdown: Preview in Browser")

curl follows the redirect and saves the file to the current folder
```bash
cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/Markdown\ Preview/markdown/extensions
curl -L https://github.com/r0wb0t/markdown-urlize/blob/master/urlize.py?raw=true -o ./urlize.py
sudo python2.6 -m compileall .
```


