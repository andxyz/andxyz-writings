[andxyz.com](https://andxyz.com/)

Personal website of Andrew Stevens

#### Design Notes

  - I decided to go with static site generation

  - I hacked up the default octopress theme big time back in 2013

  - I have since moved to Jekyll and cruft is lying in wait in every corner

#### Some thoughts on writing online in general

  With every personal website I see, the <code>about</code> button is always a click away, even on kylerushes personal site.

  [Tom Preston-Werners](http://tom.preston-werner.com) face is a mystery to me.
  [Ryan Tomayko](http://tomayko.com)'s I know.

  The difference is that tomayko discusses himself in few short seconds before sharing his ideas. That has made all the difference. Dropping the multi-column layout is getting rid of administrative debris. Generating a static site makes the codebase a pleasure to work on. That is what I want. I feel these people are all hovering around the same notion.

  [dhh's site](http://david.heinemeierhansson.com/) is all one page now. awesome. This happened after I made my blog. The wavelength is out there.

#### Design influenced by:

  - [tomayko.com](https://tomayko.com)

  - [henrik.nyh.se](https://henrik.nyh.se)

  - [sstephenson.us](https://sstephenson.us/)

  - [kylerush.net](http://kylerush.net/about-kyle-rush)

  - [mattsears.com](https://mattsears.com/)

  - [signal-vs-noise](https://signalvnoise.com/)

  - [zeldman.com](https://www.zeldman.com/2012/05/18/web-design-manifesto-2012/)

  - [mattgemmell.com](https://mattgemmell.com/)

  - [Gordon L. Hempton](https://codebrief.com/about/)

#### Why Jekyll/Octopress?

Two posts made me think the most:

- https://tomayko.com/writings/administrative-debris
- https://kylerush.net/blog/meet-the-obama-campaigns-250-million-fundraising-platform/

#### Random notes for myself:

##### Useful tasks

```bash
bundle exec jekyll clean
bundle exec jekyll serve
bundle exec rake deploy

# see the helpers
./preview.sh
./deploy.sh
```

##### Todo?

- Retina screen 2x magic etc etc (apple-icon, android-icon)

- type design inspiration http://bootswatch.com/  http://zachholman.com

- jammit as asset pipeline
  - http://mikeferrier.com/2011/04/29/blogging-with-jekyll-haml-sass-and-jammit/
  - https://github.com/zealot128/stefanwienert.net/blob/stefanwienert/plugins/jammit_generator.rb

- typography fun
  - http://zachholman.com/posts/retina/
  - https://github.com/davatron5000/Lettering.js

- https://github.com/ftlabs/fastclick play with ipad links. never heard of this. what?

- http://octopress.org/docs/plugins/include-code/ change code blocks into code downloads also

- caching?

- via etags for nginx

  http://edgeguides.rubyonrails.org/asset_pipeline.html#far-future-expires-header

  https://github.com/h5bp/server-configs/tree/master/nginx/conf#readme

  https://github.com/h5bp/server-configs/blob/561c376d2717ede751730b0a6f4fe3a0c300b49f/nginx/conf/expires.conf

```nginx
location ~ ^/assets/ {
  expires 1M;
  add_header Cache-Control public;

  add_header ETag "";
  break;
}
```
