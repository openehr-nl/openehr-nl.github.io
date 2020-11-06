FROM jekyll/jekyll

# https://github.com/envygeeks/jekyll-docker/blob/master/README.md
# https://pmarsceill.github.io/just-the-docs/
RUN gem install bundler just-the-docs

RUN gem update

VOLUME /srv/jekyll
WORKDIR /srv/jekyll
EXPOSE 4000

# jekyll build
# jekyll serve
CMD [ "bash" ]
