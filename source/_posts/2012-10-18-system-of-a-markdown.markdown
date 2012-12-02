---
comments: true
date: 2012-10-18 22:00:00
layout: post
title: "System of a Markdown"
---

## Uses for markdown

- taking notes            (simplenoteapp.com + nvalt)
- writing online          (like this website)
- html email with imgs    (helped when my mother was considering buying a sink)

## Using Sublime Text 2 for Multimarkdown 

#### Requirements

0. the [sublime text 2](sublimetext.com/2) text-editor
1. the multi-markdown software (an executable named either mmd.exe or mmd)
2. the software on your PATH environment variable
3. the sublimetext2 build system

mmd.exe on your PATH for Windows7  
mmd on your PATH for OSX

#### The Software: 

Installing the software used to turn markdown source file in the output.html

Windows: https://github.com/fletcher/peg-multimarkdown/downloads
OSX: I used <code>brew install mmd</code> see [homebrew](https://github.com/mxcl/homebrew#Readme)

#### The Build System: 

The Sublime Text 2 Build System

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
  "shell": "true",
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

## Getting Github Flavored Markdown(gfm) in Ruby

- [Redcarpet2](https://github.com/vmg/redcarpet) is pretty close
```yml
markdown: redcarpet2
redcarpet:
  extensions: ["no_intra_emphasis", "fenced_code_blocks", "autolink", "strikethrough", "superscript", "with_toc_data", "tables", "lax_spacing"]
```

- [Github says they use this](http://github.github.com/github-flavored-markdown/) I don't really believe them
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