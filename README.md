[![Stories in Ready](https://badge.waffle.io/ClubCedille/clubcedille.github.io.png?label=ready&title=Ready)](https://waffle.io/ClubCedille/clubcedille.github.io) [![Build Status](https://drone.io/github.com/ClubCedille/clubcedille.github.io/status.png)](https://drone.io/github.com/ClubCedille/clubcedille.github.io/latest)
Cedille Homepage
====================

Cedille Homepage, generated using Jekyll and themed with [Agency jekyll theme ](https://github.com/y7kim/agency-jekyll-theme)

# Setup

Requirements:
  * Ruby
  * Jekyll (`gem install jekyll`)

# How to use

### General

All section should have a similarly named YAML file in `/_data`. These files will at least contain the Title and Description of each section, and sometimes have more data to generate that part.

###Posts

Posts, that is to say "News Items", are in `/_posts`.

Posts must follow Jekyll's nomenclature, and be named as follows: YYYY-MM-DD-post-name.(extension). Extensions can be either markdown, html, or other formats supported by Jekyll. Just note that each post has to start with some YAML Front Matter in order to be parsed.

Post categories, if they have any, should **not** have any spaces in them. They'll be used for the URL. If anything, try generating the site once you've made your changes and see if you can access your article.

###Projects 

Projects are are in `/_projects`

Write them in a manner similar to posts, that is to say headed with YAML Front Matter with content going underneath. Posts should have a **thumb** variable defined that points to the thumbnail used on the main page, a **category** for extra information and their first line should be the project name. If anything, they should follow a similar structure to this:

```markdown
## Project Title (using 2 hashes for it to be h2)

---

![The Main Project Image](/link/to/the/image)

An HR seperating the title from the content you see here. The image above should also be included.
```

###About

All information for the About section exists within `/_data/about.yml`.

###Members

Team members and info are in `_data/fr/members.yml`

Images are in `/img/team/`

An eventual migration to a collection (similar to Projects) may be in store for this if ever we want extra info, otherwise it will remain like this.

=========

###TODO

* Change some colors in `_config.yml`
* Add actual content
* Find better background image for top
* Add logo
* Add mailing script (or find an alternative)

=========
For more details, read [documentation](http://jekyllrb.com/)
