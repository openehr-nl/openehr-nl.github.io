First, in linux bash or powershell run: 
`docker build . -t openehr-nl-jekyll`

than run this in order to bring up your jekyll environment to live:
`docker run --rm -v "$(pwd):/srv/jekyll" -p 4000:4000 -it -h openehr-nl.local openehr-nl-jekyll bash`

Now you that you have a bash prompt, you can update if necessary
`gem update && bundle update`

than you can start up the build, the webservice and the listener:
`jekyll serve --host openehr-nl.local`

Now you can change files, content and just see the results by browsing at:
`http://openehr-nl.local:4000/`
