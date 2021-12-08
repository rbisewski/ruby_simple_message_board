FROM ubuntu:16.04

ADD . /app
WORKDIR /app

RUN apt update -y
RUN apt install -y ruby ruby-dev rails gcc nodejs make sqlite sqlite3-pcre libsqlite3-0 libsqlite3-dev zlib1g zlib1g-dev

RUN gem install nokogiri:1.7.0 railties:4.2.6

#RUN chown daemon:daemon -R /app

#USER daemon

RUN bundle install

RUN rake db:schema:load

CMD ["/usr/local/bin/rails","s"]
