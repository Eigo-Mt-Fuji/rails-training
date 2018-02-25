FROM ruby:2.5.0
LABEL maintainer "e-fujikawa <efg.river@gmail.com>" \
      readme="https://github.com/Eigo-Mt-Fuji/ruby-rails-labo/blob/master/README.md" \
      description="Dockerfile of ruby on rails laboratory app." 

ENV LANG en_US.UTF-8
ENV LC_ALL $LANG
WORKDIR /tmp

COPY Gemfile .
COPY Gemfile.lock .

RUN apt-get update
RUN apt-get install -y mysql-client sqlite3 nodejs jq
RUN bundle install

EXPOSE 3000
