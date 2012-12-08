---
comments: true
date: 2012-09-15 19:22:05
layout: post
title: "Day 1 with Octopress"
---

[![octopress logo 2012](/images/posts/octopress-logo.png)](/images/posts/octopress-logo.png) 

Octopress is a framework for blogging. (Octopress uses git and ruby to produce a static site)

## Things to know if you are a newbie to ruby and rake.

Ruby is the language, `rake` is like `make`. Tools start with an <code>r</code> when it is ruby-esque version of a unix tool. Same old, same old, really.

Figuring out how to do some simple things was easy. It's all listed in the [README.markdown][readme] and the [Rakefile][rakefile]. Good comments, seems pretty clear.

The syntax for a new post <code>rake new_post['Day 1 with Octopress']</code>

## People I like 

The following inspired me to take the plunge into this beefed up jekyll world of octopress:
- alblue http://alblue.bandlem.com/2012/02/disadvantages-of-octopress.html
- henrik http://henrik.nyh.se
  
## Custom Tweaks

- I tweaked the theme scss, and layout files heavily
- This [redcarpet2 markdown plugin][plugin] is awesome, get's me closer to [github flavored markdown][gfm]
- You can read up on the underlying technology: [Liquid templates engine][liquid], [Jekyll][jekyll], and [Octopress][octopress] if that is your style (was for me).

## Why Octopress and not just Jekyll 

(Jekyll is the framework on which Octopress is based)

[Tom Preston-Werner][mojombo], the creator of Jekyll said they use Jekyll at Github. Therefore, the future of the code-base is link to what github needs. 

Octopress was created by [Brandon Mathis][imathis] (a designer and coder) who is intent on pushing the Jekyll framework forward for the sake of fellow bloggers. He calls them <code>Hackers</code> because you need to use git and ruby to do what you want. Maybe one day Octopress can be like Gollum, and abstract the git part away. For now it seems it's <code>Hackers</code> only.

[readme]: https://github.com/imathis/octopress/blob/master/README.markdown
[rakefile]: https://github.com/imathis/octopress/blob/master/Rakefile
[plugin]: https://github.com/nono/Jekyll-plugins
[gfm]: http://github.github.com/github-flavored-markdown/
[liquid]: https://github.com/Shopify/liquid/wiki/Liquid-for-Programmers
[jekyll]: https://github.com/mojombo/jekyll#readme
[octopress]: https://github.com/imathis/octopress#readme
[mojombo]: http://tom.preston-werner.com/
[imathis]: http://brandonmathis.com/