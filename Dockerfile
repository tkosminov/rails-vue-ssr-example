FROM ruby:2.7.0-alpine

RUN apk add --update tzdata && \
cp /usr/share/zoneinfo/Europe/London /etc/localtime && \
echo "Europe/Moscow" > /etc/timezone

RUN apk add --update --no-cache --virtual runtime-deps nano postgresql-client libffi-dev readline bash htop curl nodejs yarn

RUN apk add --update --no-cache --virtual build-deps build-base git postgresql-dev libc-dev linux-headers libxml2-dev libxslt-dev readline-dev

ARG env
ENV env $env
ENV RAILS_ENV $env
ENV NODE_ENV production
ENV RAILS_LOG_TO_STDOUT true
ENV RAILS_SERVE_STATIC_FILES true

WORKDIR /server
COPY . .
RUN mkdir tmp/pids
RUN mkdir tmp/chache
RUN mkdir tmp/sockets
RUN gem install bundler

RUN bundle install --jobs=10
RUN yarn install

RUN apk add ruby-nokogiri

RUN apk del build-deps

RUN bundle exec rails assets:precompile
RUN bundle exec rails webpacker:compile

CMD bundle exec rake db:create db:migrate && bundle exec puma -p 3000 -w 2 -e $env --preload -t 8:32
