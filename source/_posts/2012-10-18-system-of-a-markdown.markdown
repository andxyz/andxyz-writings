---
comments: true
date: 2012-10-18 22:00:00
layout: post
title: "System of a Markdown"
---

# Ruby

http://github.github.com/github-flavored-markdown/

```ruby
require 'digest/md5'

def gfm(text)
  # Extract pre blocks
  extractions = {}
  text.gsub!(%r{<pre>.*?</pre>}m) do |match|
    md5 = Digest::MD5.hexdigest(match)
    extractions[md5] = match
    "{gfm-extraction-#{md5}}"
  end

  # prevent foo_bar_baz from ending up with an italic word in the middle
  text.gsub!(/(^(?! {4}|\t)\w+_\w+_\w[\w_]*)/) do |x|
    x.gsub('_', '\_') if x.split('').sort.to_s[0..1] == '__'
  end

  # in very clear cases, let newlines become <br /> tags
  text.gsub!(/^[\w\<][^\n]*\n+/) do |x|
    x =~ /\n{2}/ ? x : (x.strip!; x << "  \n")
  end

  # Insert pre block extractions
  text.gsub!(/\{gfm-extraction-([0-9a-f]{32})\}/) do
    "\n\n" + extractions[$1]
  end

  text
end
```

# Sublime Text 2 Build System

http://sublimetext.info/docs/en/reference/build_systems.html

Using the build provider Install Pandoc on your system. 
I'm assuming that you have the pandoc.exe on your PATH in for Windows.
and multimarkdown on your OSX machine.

(for OSX I used <code>brew install mmd</code>)

Save the following <code>Markdown.sublime-build</code> file to your <code>User folder</code> in <code>Packages</code>.  
The folder Windows 7 system this is:

```ruby
'C:\Users\USERNAME\AppData\Roaming\Sublime Text 2\Packages\User\'
```

On OSX:

```sh
/usr/Users/andxyz/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/
```

Open a Mardown file (with *.md file extension) and hit F7.
It will make the <code>filename.html</code> and show the file in the browser

the final <code>Markdown.sublime-build</code> (windows):

{% codeblock Markdown.sublime-build lang:json %}
{
  "shell": "true"
	"cmd": ["pandoc.exe", "--to=html", "--output=$file.html", "$file", "&", "C:\Users\Username\AppData\Local\Google\Chrome\Application\chrome.exe","$file.html"],
	"selector": "source.md"
}
{% endcodeblock %}

the final <code>Markdown.sublime-build</code> (OSX)

{% codeblock Markdown.sublime-build lang:json %}
{
  "shell": "true",
  "cmd": ["/usr/local/bin/mmd \"$file\"; /usr/bin/open \"$file_path/$file_base_name.html\"", "&", "open", "-a", "Google Chrome", "$file.html"],
  "selector": "source.md"
}
{% endcodeblock %}

Sublime Text 2 using Package Control
