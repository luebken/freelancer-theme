# https://registry.hub.docker.com/_/ruby/
FROM ruby:2.1.2

RUN  apt-get update && \
	 apt-get -y install nodejs

RUN gem install jekyll

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app

EXPOSE 4000

ONBUILD ADD _config.yml /usr/src/app/
ONBUILD ADD _posts/ /usr/src/app/
ONBUILD ADD img/ /usr/src/app/

CMD ["jekyll", "serve"]