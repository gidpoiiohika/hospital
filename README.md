## Види користувачів:
- пацієнт (User)
- лікар (Doctor)
- Admin

## Для кожного виду користувачів реалізував наступний функціонал:

1. Пацієнт може зареєструватися, увійти до свого особистого кабінету (Profile), переглядати список лікарів за категоріями, записатися на прийом, отримати рекомендації від лікаря після прийому.
2. Лікар може увійти в особистий кабінет (Profile), переглянути список пацієнтів, що записалися, надати рекомендації пацієнту. Лікар може відноситися до певної категорії (терапевт, кардіолог тощо).
3. Адмін має доступ до списку пацієнтів та лікарів. Може створювати категорії, лікарів, асайнити певного лікаря до категорії, зробив через ActiveAdmin.

## Аутентифікація та авторизація:
- використовуваав devise;
- реалізував login через phone-password;
- використовував gem cancancan для розмежування прав користувачів;

## Вимоги до таблиці категорій:
- валідація на унікальність за ім'ям;
- можливість додавання кількох лікарів;
- Зображення зберігав на S3

## Вимоги до таблиць Лікар-Пацієнт:
- реалізував зв'язок many-to-many;
- у лікаря може бути лише 10 відкритих записів (одночасно);
- запис автоматично закривається (не видаляється) після того, як лікар напише
користувачеві рекомендацію;

## Link to heroku
Heroku [link](https://hospitaluk.herokuapp.com/) - сторінка для пацієнтів
```shell
```

Heroku [link](https://hospitaluk.herokuapp.com/doctors/sign_in/) - сторінка для лікарів
 ```shell
 phone_number - 787898
 password - 787898
 ```
Heroku [link](https://hospitaluk.herokuapp.com/admin/login) - сторінка для admina
 ```shell
 title - 787898
 password - 123456
```

## Prerequisites

The setups steps expect following tools installed on the system.

- GitHub
- Ruby [3.0.1](https://github.com/gidpoiiohika/new_task_project/blob/master/Gemfile#L4)
- Rails [7.0.3](https://github.com/gidpoiiohika/new_task_project/blob/master/Gemfile#L6)
- PostgreSQL 

## Install

### Clone the repository

```shell
git git@github.com:gidpoiiohika/hospital.git
cd hospital
```

### Check your Ruby version

```shell
ruby -v
```

The ouput should start with something like `ruby 3.0.1`

If not, install the right ruby version using [RVM](https://rvm.io/rvm/install#installing-rvm) (it could take a while):

```shell
rvm install 3.0.1
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```shell
bundle install
```
### Initialize the database
- seeds.rb [seed](https://github.com/gidpoiiohika/hospital/blob/master/db/seeds.rb#L1)

```shell
rails db:create db:migrate db:seed 
```

## Run rails server

```shell
bin/dev
```

Open [http://127.0.0.1:3000/](http://127.0.0.1:3000)

## Gems
- [gem 'cancancan'](https://github.com/CanCanCommunity/cancancan)
- [gem 'aws-sdk-s3'](https://github.com/aws/aws-sdk-ruby)
- [gem 'activeadmin'](https://github.com/activeadmin/activeadmin)
- [gem "faker"](https://github.com/faker-ruby/faker)
- [gem 'devise'](https://github.com/heartcombo/devise)
- [gem "rspec-rails"](https://github.com/rspec/rspec-rails)
- [gem "factory_bot_rails" ](https://github.com/thoughtbot/factory_bot_rails)
- [gem "byebug"](https://github.com/deivid-rodriguez/byebug)
