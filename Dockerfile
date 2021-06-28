FROM jekyll/jekyll
# see https://github.com/envygeeks/jekyll-docker/blob/master/README.md for using latest jekyll as docker
# this provides also bundler, but it needs to be updated
RUN gem update bundler

# We will use following gems:
# - github-pages https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/testing-your-github-pages-site-locally-with-jekyll
# - theme just-the-docs https://pmarsceill.github.io/just-the-docs/
# We just need to install required gems with the bundler
COPY Gemfile /srv/jekyll/
RUN bundle install

VOLUME /srv/jekyll
WORKDIR /srv/jekyll
EXPOSE 4000

# building and serving local website
ENTRYPOINT ["jekyll", "serve"]
CMD ["--host", "openehr-nl.local"]
