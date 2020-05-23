# README

## Dependencies

* [Install Ruby 2.6.5 and Rails 6.0](https://gorails.com/setup/ubuntu/19.10)
* Install PostgreSQL 11.5
* Install Node.js 12.16.1 and Yarn

## Gems

```bash
bundle install
```

## Node packages

```bash
yarn install
```

## Setup database

```bash
rake db:migrate:reset
rake db:seed
```

## Run (development)

```bash
foreman start
```

## Run (production)

```bash
RAILS_ENV=production bundle exec rails assets:precompile
NODE_ENV=production bundle exec rails webpacker:compile

RAILS_ENV=production rails s
```
