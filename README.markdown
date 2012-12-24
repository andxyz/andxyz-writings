[andxyz.com](http://andxyz.com/)

Personal website of Andrew Stevens 

### Design Notes

- I decided to go with static site generation
- I hacked up the default octopress theme big time.

design influenced by:
  [tomayko.com](http://tomayko.com)
  [henrik.nyh.se](http://henrik.nyh.se)
  [sstephenson.us](http://sstephenson.us/)
  [kylerush.net](http://kylerush.net/about-kyle-rush)
  [mattsears.com](http://mattsears.com/)
  [signal-vs-noise](http://37signals.com/svn/)
  [zeldman.com][http://www.zeldman.com/2012/05/18/web-design-manifesto-2012/]
Two posts made me think the most, http://tomayko.com/writings/administrative-debris and http://kylerush.net/blog/meet-the-obama-campaigns-250-million-fundraising-platform/

With every personal website I see, the <code>about</code> button is always a click away, even on kylerushes personal site. [Tom Preston-Werners](tom.preston-werner.com) face is a mystery to me. [Ryan Tomayko](http://tomayko.com)'s I know. The difference is that tomayko discusses himself a few short seconds before sharing his ideas. That has made all the difference. Dropping the multi-column layout is getting rid of administrative debris. Generating a static site makes the codebase a pleasure to work on. That is what I want. I feel these people are all hovering around the same notion.

## Notes for myself: 

### Useful tasks

  bundle exec rake clean
  bundle exec rake new_post['do the readme first']
  bundle exec rake preview
  bundle exec rake generate
  bundle exec rake deploy
  git diffks andxyz

### Branch setup

  **branch-andxyz** : I deploy from
  **branch-master** : octopress proper
  **remote-origin** : my linode gitolite
  **remote-imathis** : github.com/imathis/octopress.git

### Things todo/checkout

- https://github.com/davatron5000/Lettering.js
- https://github.com/ftlabs/fastclick play with ipad links
- http://octopress.org/docs/plugins/include-code/ change code blocks into code downloads 



