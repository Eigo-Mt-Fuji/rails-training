## はじめに

* Rubyバージョン
    * 2.5.x
* Railsバージョン
    * 5.1.5
* システム周辺環境
    * Mac OS X 11.6 or later, Mac OS Sierra
    * Travis cli 1.8.8
    * DockerCompose 1.18.0 or later
    * Docker 17.12.0 or later, stable

## 使い方

* Git Clone / Bundle install

```bash
$ git clone git@github.com:Eigo-Mt-Fuji/ruby-rails-labo.git
$ bundle install
```

* dockerでrailsのserver起動 

```bash
$ rake run_docker
```

* 開く

```bash
open http://localhost:10081/daily_reports
```

## rails scaffiold

```bash
rails g scaffold DailyReport date:date from_time:string end_time:string comment:string
```

* docker上でrake test実行

```bash
rake test_on_docker
```

* lint実行(rubocop)

```bash
rake lint
```

* db:migratre(ローカル環境で実行する場合)

```
export DATABASE_URL="mysql2://app:app@0.0.0.0:33306"
export RAILS_ENV=development
bundle exec rake db:migrate
```
## 参考

* [Qiita Ruby / Rails デバッガことはじめ](https://qiita.com/port-development/items/5ea6448eb2b45c70ef65)
* [Qiita RailsアプリをDockerで開発する](https://qiita.com/togana/items/30b22fc39fe6f7a188ec)
* [Qiita MySQLの起動をまってdb:migrate](https://qiita.com/k_tada/items/66c872104beabcfb4340)

