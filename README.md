<img src="https://github.com/gambala/gambala/raw/master/app/assets/images/logo.png" alt="Gambala.pro" width="250" height="64">

## The Goal (in russsian)

В этом проекте нет дедлайнов, поэтому код можно оттачивать столько, сколько требуется, в отличие от заказных проектов. В результате - код отсюда можно смело использовать как эталон в других проектах.

## Install

```
git clone git@github.com:gambala/gambala.git
cd gambala
bundle install
cp config/application.yml.example config/application.yml
nano config/application.yml
rake db:create
rake db:migrate
make s
```

But first you need installed Postgres, off course. For example, 9.5 (or higher):

```
sudo apt-get install postgresql-9.5 postgresql-server-dev-9.5
gem install pg -- --with-pg-config=/usr/bin/pg_config
sudo -u postgres psql
create user username with password 'secret';
alter role username superuser createrole createdb replication;
\q
```
