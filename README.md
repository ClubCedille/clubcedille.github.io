CEDILLE Homepage
====================

CEDILLE Homepage, generated using Jekyll and themed with [Agency jekyll theme](https://github.com/y7kim/agency-jekyll-theme).

# Setup

Requirements:

  * Ruby (`apt install ruby`)
  * Nodejs (`apt install nodejs`)

or..

  * Docker
  * Docker-compose

### Install on Linux

Notice: The commands shown here are used as examples of what to do for each steps on Ubuntu. They may differ on other Linux distributions. 

1. Install Jekyll: `sudo gem install jekyll`
2. Install the bundler : `sudo gem install bundler`
3. Use `git clone` to clone the repo: `git clone https://github.com/ClubCedille/clubcedille.github.io.git`
4. Move to the project's directory: `cd clubcedille.github.io/`
5. Install dependency with command : `bundle install`
6. Build the project: `jekyll build`
5. Run the server: `jekyll server`
6. The server address will be printed to the terminal. Use this IP address to access the website from your browser. By default, it should be `http://127.0.0.1:4000/`. 

 - If you `jekyll build` give depency error, you can either install the current gem version or you can prepend the command with ` bundle exec jekyll serve `
 - You can change the port by adding `--port portNumber` 
 - You can also change the host or ip by adding `--host hostOrIp`
 - Example :  ` bundle exec jekyll serve --host 192.168.1.10 --port 4242 `

### Using Docker

1. Move to the project's directory: `cd clubcedille.github.io/`
2. Run  `(sudo) docker-compose up` 

# How to use

### General

All section should have a similarly named YAML file in `/_data`. These files will at least contain the Title and Description of each section, and sometimes have more data to generate that part.

### Posts

Posts, that is to say "News Items", are in `/_posts`.

Posts must follow Jekyll's nomenclature, and be named as follows: YYYY-MM-DD-post-name.(extension). Extensions can be either markdown, html, or other formats supported by Jekyll. Just note that each post has to start with some YAML Front Matter in order to be parsed.

Post categories, if they have any, should **not** have any spaces in them. They'll be used for the URL. If anything, try generating the site once you've made your changes and see if you can access your article.

### Projects 

Projects are are in `/_projects`

Write them in a manner similar to posts, that is to say headed with YAML Front Matter with content going underneath. Posts should have a **thumb** variable defined that points to the thumbnail used on the main page, a **category** for extra information and their first line should be the project name. If anything, they should follow a similar structure to this:

```markdown
## Project Title (using 2 hashes for it to be h2)

---

![The Main Project Image](/link/to/the/image)

An HR seperating the title from the content you see here. The image above should also be included.
```

### About

All information for the About section exists within `/_data/about.yml`.

### Members

Team members and info are in `_data/fr/members.yml`

Images are in `/img/team/`

An eventual migration to a collection (similar to Projects) may be in store for this if ever we want extra info, otherwise it will remain like this.

=========

### TODO

Check our website's [issues page](https://github.com/ClubCedille/clubcedille.github.io/issues) more details.

=========

For more details about Jekyll, read its [documentation](http://jekyllrb.com/).

