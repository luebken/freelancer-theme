# https://registry.hub.docker.com/_/ruby/
FROM ruby:2.1.2

RUN  apt-get update && \
	 apt-get -y install nodejs

RUN gem install jekyll

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
ADD . /usr/src/app

EXPOSE 4000

CMD ["jekyll", "serve"]