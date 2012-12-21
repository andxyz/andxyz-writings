---
comments: true
date: 2012-10-18 22:00:00
layout: post
title: "System of a Markdown"
---

## Uses for markdown

- taking notes            ([simplenoteapp.com](http://simplenoteapp.com) + [nvalt](http://brettterpstra.com/project/nvalt/))
- writing online          (like the website you are looking at right now)
- html email with imgs    (helped when my mother was [considering buying a sink, example email](/images/posts/system-of-a-markdown-new-kitchen.markdown.html))

So markdown has appeal, but how to set it up on OSX? [setup-1](#setup1), [setup-2](#setup2), [setup-3](#setup3)

<a id="setup1"></a>
### 1a. SublimeText 2(ST2) plugin

##### Requirements

0. the [Sublimetext 2](sublimetext.com/2) text-editor (costs $60)
1. install the [package control plugin](http://wbond.net/sublime_packages/package_control) into sublimetext2 (free)
2. use package control to install the [markdown-preview plugin](https://github.com/revolunet/sublimetext-markdown-preview) (free)

Note: With these plugins (if you are a coder) you can use GitHub's free markdown rendering API. 
POST to http://developer.github.com/v3/markdown/ 
Thus allowing you to see your README.markdown (with emoji) before you commit it, etc.

Just Make sure to set the parser to github.
[![ST2 preview markdown plugin screenshot1](/images/posts/system-of-a-markdown-1.png)](/images/posts/system-of-a-markdown-1.png)
[![ST2 preview markdown plugin screenshot1](/images/posts/system-of-a-markdown-2.png)](/images/posts/system-of-a-markdown-2.png)

<a id="setup2"></a>
### 2. The Old ST2 Build System: **My old way** from sublimetext2 (still good for emails and such)

##### Requirements

0. the [sublime text 2](sublimetext.com/2) text-editor
1. install the multi-markdown software (an executable named either mmd.exe or mmd)
2. the software on your PATH environment variable
<pre>
mmd.exe on your PATH for Windows7
mmd on your PATH for OSX
</pre>
3. a sublimetext2 build system


#### Install The Multi-markdown Software: 

Installing the software for turning a <code>input.markdown</code> source file into <code>output.html</code>

**Windows**: https://github.com/fletcher/peg-multimarkdown/downloads
**OSX**: I used <code>brew install mmd</code> see [homebrew](https://github.com/mxcl/homebrew#Readme)

The Sublime Text 2 Build System

Save the following <code>Markdown.sublime-build</code> file to your <code>User</code> folder in <code>Packages</code>. 
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

<code>Markdown.sublime-build</code> (Windows7):

```json
{
  "shell": "true",
  "cmd": ["pandoc.exe", "--to=html", "--output=$file.html", "$file", "&", "C:\Users\USERNAME\AppData\Local\Google\Chrome\Application\chrome.exe","$file.html"],
  "selector": "source.md"
}
```

<code>Markdown.sublime-build</code> (OSX):

```json
{
  "shell": "true",
  "cmd": ["/usr/local/bin/mmd \"$file\"; /usr/bin/open \"$file_path/$file_base_name.html\"", "&", "open", "-a", "Google Chrome", "$file.html"],
  "selector": "source.md"
}
```
<a id="setup3"></a>
### 3. Github Flavored Markdown(gfm) in Ruby

- [Redcarpet2](https://github.com/vmg/redcarpet), **I use redcarpet2** for my octopress blog [andxyz.com](http://andxyz.com)
```yml
# Andxyz uses the redcarpet2 plugin so we can have "github flavored markdown"
# https://github.com/nono/Jekyll-plugins/blob/master/redcarpet2_markdown.rb
# required reading http://github.github.com/github-flavored-markdown/
# for redcarpet2 options see https://github.com/vmg/redcarpet#readme
markdown: redcarpet2 # markdown: rdiscount
redcarpet:
  extensions: ["hard_wrap", "no_intra_emphasis", "fenced_code_blocks", "autolink", "strikethrough", "superscript", "with_toc_data", "tables", "lax_spacing"]
```

- [Github says they use this ruby code](http://github.github.com/github-flavored-markdown/) I don't really believe them, I think they are in c code now, they convert so much markdown it became a pain-point.

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

## Research list:

Another handy way to do it: http://brettterpstra.com/easy-command-line-github-flavored-markdown/

##### Markdown as a Writer (think screenplays):

- http://doingthatwrong.com/home/2012/3/6/multimarkdown-build-systems-for-sublime-text-2.html Inspiration for this post
- http://www.davidwain.com/blog/
- http://brettterpstra.com/why-markdown-a-two-minute-explanation/ (This man sells [a markdown app](http://markedapp.com/) if you are into that. He also has [free markdown and web-writing tools](http://brettterpstra.com/code/))
- http://5by5.tv/systematic/20 - the show notes & links are key
- http://johnaugust.com/apps [about](http://johnaugust.com/about)
- http://www.candlerblog.com/projects/ [about](http://www.candlerblog.com/about/)
- http://quoteunquoteapps.com/highland/

##### Markdown as a Coder (think programmer/developer)

- http://www.rumproarious.com/2012/10/29/going-long-on-markdown/
- http://brettterpstra.com/
- http://www.codinghorror.com/blog/2012/10/the-future-of-markdown.html
- http://www.rumproarious.com/2012/10/29/markdown-the-spec/
- http://fletcherpenney.net/multimarkdown/
- http://github.github.com/github-flavored-markdown/

