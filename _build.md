First, in linux bash, macOS terminal or powershell run (from the project directory): 
`docker build . -t openehr-nl-jekyll`

Than run this in order to bring up your jekyll environment to live:
`docker run --rm -v "$(pwd):/srv/jekyll" -p 4000:4000 -it -h openehr-nl.local openehr-nl-jekyll bash`

Now you that you have a bash prompt, you can update if necessary
`gem update && bundle update`

than make sure you have this lines in your local `_config.yml` (without committing them):
`verbose: true
hostname: openehr-nl.local
port: 4000`

than you can start up the build, the webservice and the listener:
`jekyll serve --host openehr-nl.local`

Now you can change files, content and just see the results by browsing at:
`http://openehr-nl.local:4000/`
