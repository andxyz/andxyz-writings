[andxyz.com](http://andxyz.com/)

Personal website of Andrew Stevens

### Design Notes

  - I decided to go with static site generation

  - I hacked up the default octopress theme big time.

### Design influenced by:

  - [tomayko.com](http://tomayko.com)

  - [henrik.nyh.se](http://henrik.nyh.se)

  - [sstephenson.us](http://sstephenson.us/)

  - [kylerush.net](http://kylerush.net/about-kyle-rush)

  - [mattsears.com](http://mattsears.com/)

  - [signal-vs-noise](http://37signals.com/svn/)

  - [zeldman.com](http://www.zeldman.com/2012/05/18/web-design-manifesto-2012/)

## Why Jekyll/Octopress?

Two posts made me think the most:

- http://tomayko.com/writings/administrative-debris 
- http://kylerush.net/blog/meet-the-obama-campaigns-250-million-fundraising-platform/

### Some thoughts on writing online in general

With every personal website I see, the <code>about</code> button is always a click away, even on kylerushes personal site.

[Tom Preston-Werners](http://tom.preston-werner.com) face is a mystery to me. 
[Ryan Tomayko](http://tomayko.com)'s I know. 

The difference is that tomayko discusses himself in few short seconds before sharing his ideas. That has made all the difference. Dropping the multi-column layout is getting rid of administrative debris. Generating a static site makes the codebase a pleasure to work on. That is what I want. I feel these people are all hovering around the same notion.

[dhh's site](http://david.heinemeierhansson.com/) is all one page now. awesome. This happened after I made my blog. The wavelength is definately out there.

## Notes for myself:

### Useful tasks

'''
  bundle exec rake clean
  bundle exec rake new_post['do the readme first']
  bundle exec rake preview
  bundle exec rake generate
  bundle exec rake deploy
  git diffks andxyz
'''

### Branch setup

'''
  **branch-andxyz** : I deploy from
  **branch-master** : octopress proper
  **remote-origin** : my linode gitolite
  **remote-imathis** : github.com/imathis/octopress.git
'''

### TODO / Look-into

- Retina screen 2x magic etc etc (apple-icon, android-icon)

- jammit as asset pipeline 
  - http://mikeferrier.com/2011/04/29/blogging-with-jekyll-haml-sass-and-jammit/
  - https://github.com/zealot128/stefanwienert.net/blob/stefanwienert/plugins/jammit_generator.rb

- typography fun
  - http://zachholman.com/posts/retina/
  - https://github.com/davatron5000/Lettering.js

- https://github.com/ftlabs/fastclick play with ipad links. never heard of this. what?

- http://octopress.org/docs/plugins/include-code/ change code blocks into code downloads also
