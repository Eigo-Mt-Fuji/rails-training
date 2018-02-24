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

```
git clone git@github.com:Eigo-Mt-Fuji/ruby-rails-labo.git
bundle install
```

* ローカル環境起動

```
rails g scaffold DailyReport date:date from_time:string end_time:string comment:string
bundle exec rake db:migrate
```

* 開く

```
rails server -b localhost -p 10081 &
open http://localhost:10081/daily_reports
```

## 参考

* [Qiita Ruby / Rails デバッガことはじめ](https://qiita.com/port-development/items/5ea6448eb2b45c70ef65)
