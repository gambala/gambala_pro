![Сайт Gambala.pro](https://github.com/gambala/gambala/raw/master/app/assets/images/logo.png)

[![Build Status](https://semaphoreci.com/api/v1/gambala/gambala/branches/master/shields_badge.svg)](https://semaphoreci.com/gambala/gambala)

Работает на:
* ruby 2.4.1
* rails 5.1.x
* pg

## Установка

### Клонирование и установка гемов

```
git clone git@github.com:gambala/gambala.git
cd gambala
bundle install
```

### Установка параметров для БД и гемов

Скопируйте файл командой:

```
cp config/application.yml.example config/application.yml
```

И измените его (`config/application.yml`) в редакторе по инструкциям внутри.

### Установка Postgres

```
rake db:migrate
```

Если не создается БД, то:
```
rake db:create
rake db:migrate
```

Если не установлен Postgres, то:

```
sudo apt-get install postgresql-9.5 postgresql-server-dev-9.5
gem install pg -- --with-pg-config=/usr/bin/pg_config
sudo -u postgres psql
create user username with password 'secret';
alter role username superuser createrole createdb replication;
create database projectname_development owner username;
\q
```

Где `username` - имя вашего пользователя на ПК, и `projectname_development` - имя базы данных вашего проекта.

### Запуск

Только рельсовый сервер:

```
rails s
```

Или запуск через `guard` для автообновления гемов, сервера и страниц (livereload):

```
guard
```

## Цель проекта

В этом проекте нет дедлайнов, поэтому код можно оттачивать столько, сколько требуется, в отличие от заказных проектов. В результате - код отсюда можно смело использовать как эталон в других проектах.

Мне нравится Rails Way, progressive enhancement и unobtrusive js. Мне нравится Twitter Bootstrap (за некоторыми исключениями, из-за чего я создал свою версию: [bootstrap-components](https://github.com/gambala/bootstrap-components)).

Знакомьтесь с решениями, используйте в своих проектах. Репозиторий всегда будет open-source.

Хотите поучаствовать в развитии? Ознакомьтесь с issues, создайте свои, или поработайте над существующими. Правила совместной работы описаны в [CONTRIBUTING.md](https://github.com/gambala/gambala/blob/master/CONTRIBUTING.md).

Есть вопросы? Задайте их мне в чате в телеграме: [telegram.me/openstudio_rus](https://telegram.me/openstudio_rus)
