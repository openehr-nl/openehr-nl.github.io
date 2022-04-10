# Information for building locally

This website is using `jekyll` and `liquid` in order to build HTML pages from markdown files.
The same technology stack is also used by [github-pages](https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/about-github-pages-and-jekyll). 

> NOTE: GitHub has the following dependencies and versions: https://pages.github.com/versions/.
This relates to the packages required by `bundle` and the `Gemfile.lock` file; see also https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll.


## Website name

Make sure you have these lines in your local `_config.yml` (but without committing them):
```yml
verbose: true
hostname: openehr-nl.local
port: 4000
```

You may need to add `openehr-nl.local` to your hosts file (on Windows this file is usually located at C:\Windows\System32\drivers\etc\hosts):
```text
127.0.0.1 openehr-nl.local openehr-nl
```

Once the service is started, you can change files, content and just see the results by browsing at:
`http://openehr-nl.local:4000/`


## Configuring the theme

First make sure you have these lines in your local `_config.yml` (but without committing them):
```yml
theme: just-the-docs
```


## Building the website

There are two methods of building the website, described in the followings. 
Both methods assume that the website will be available at http://openehr-nl.local:4000/.

### Build using `docker`

First, in linux bash, macOS terminal or powershell run (from the project directory): 
```shell
docker build . -t openehr-nl-zibs
```

Than run the followings in order to bring up your jekyll environment to live:
```shell
docker run --rm -v "$(pwd):/srv/jekyll" -p 4000:4000 -it -h openehr-nl.local openehr-nl-zibs
```

If you need to get access to a bash shell inside container by running on the host:
```shell
docker ps
# assuming the listed container-id is d31f0d34262a, use it with next command:
docker exec --it d31f0d34262a bash
```

### Using `docker-compose`

Docker-compose is doing all above by applying configuration from docker-compose.yml file.
You only need to call from in linux bash, macOS terminal or powershell run (from the project directory):
```shell
docker-compose up openehr-nl-zibs
```

You can get access to a bash shell inside container by running on the host:
```shell
docker-compose exec openehr-nl-zibs bash
```

## Other commands 

If you need to update the tools to the latest published version, you can do that by a running in the container bash prompt:
```shell
bundle update
```

Then you can manually start up the build, the webservice and the listener:
```shell
jekyll serve --host openehr-nl.local
```

