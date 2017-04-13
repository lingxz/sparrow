---
title: How to use this theme
---

Just fork this repo and replace the posts with your own. Also rename the sample poetry collection to replace it with your own collection, or just delete it if you don't need to use collections. The example is poetry, but you can easily revamp this into essays, short stories, portfolio, or whatever your creative work is. 

OR you can also install this theme as a theme gem. To do that, add to your Gemfile: 

```ruby
gem "sparrow-jekyll-theme"
```

And add this line site's `_config.yml`: 

```yaml
theme: sparrow-jekyll-theme
```

And then do `bundle install`. 

To run your site locally, do `bundle exec jekyll serve`. 

For customization, see below. 

- [General configuration](#general-configuration)
- [Disqus](#disqus)
- [Google analytics](#google-analytics)
- [Collections](#collections)
- [Pagination](#pagination)
- [Navigation](#navigation)
- [Front matter defaults](#front-matter-defaults)
- [Other](#other)

### General configuration

Customize these values in the `_config.yml` file: 

```yaml
title                    : "Sparrow"
title_separator          : "-"
description              : "A clean and minimal theme for writers."
favicon                  : "/assets/images/bird.png"
avatar                   : "/assets/images/bird.png"
url                      : "https://theconfused.me" # the base hostname & protocol for your site e.g. "https://mmistakes.github.io"
baseurl                  : "/sparrow" 

# Site Author
author:
  name                   : "Lingyi" # appears in the footer and atom feed
```


### Disqus

To activate Disqus, fill in your disqus shortname: 

```yaml
comments                 : true # set it to false to disable comments
disqus:
  shortname              : your_shortname
```

### Google analytics

Enable google analytics by filling in your tracking ID: 

```yaml
analytics:
  google:
    tracking_id          : # add your google tracking id here
```

### Collections

If you are using collections, be sure to replace this with your collection name: 

```yaml
collections:
  poetry:
    output: true
    permalink: /:collection/:title/
```

### Pagination

Currently, pagination is set to a the blog page. Unfortunately Jekyll does not yet support pagination on multiple pages. 

If you want to paginate on a different page, simply change the `paginate_path` value in the config file and create the relevant page. 

```yaml
paginate: 5 # amount of posts to show
paginate_path: "/blog/page:num/"
timezone: # http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
```

### Navigation

You can change the navigation links in `_data/navigation.yml`.

### Front matter defaults

At the bottom of the config file, you can also set [front matter defaults](https://jekyllrb.com/docs/configuration/#front-matter-defaults) so that you don't have to repeat the same front matter for every post. This is an example: 

```yaml
# Front matter defaults
defaults:
  # _pages
  - scope:
      path: ""
      type: pages
    values:
      layout: page
      comments: false
  # _posts
  - scope:
      path: ""
      type: posts
    values:
      layout: post
      comments: true
      share: true
  # _poetry
  - scope:
      path: ""
      type: poetry
    values:
      layout: post
      share: false
```

### Other

To enhance SEO, you can add your twitter username to `_config.yml`. 

You can also add a image path for the `og_image` value in the config file, for a default open graph sharing image. This value can be overridden in individual posts. 

There are also helper classes for ease of inserting image and their captions, adapted from the [Minimal Mistakes theme by Michael Rose](https://github.com/mmistakes/minimal-mistakes). You can find a [sample post with images](https://theconfused.me/sparrow/blog/post-with-image/) on the [demo site](https://theconfused.me/sparrow). 

The color schemes and fonts can also be customized through scss, by editing the relevant variable in `_variables.scss`. 
