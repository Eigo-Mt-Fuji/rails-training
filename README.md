## はじめに

* Rubyバージョン
    * 2.5.x
* Railsバージョン
    * 5.1.5

## 使い方

```bash
$ gem install rails
$ git clone https://github.com/Eigo-Mt-Fuji/rails-training.git
$ cd rails-training
$ bundle install
$ RAILS_ENV=development rails db:migrate
$ RAILS_ENV=development rails assets:precompile
$ rails s
$ open http://0.0.0.0:3000/daily/index
```
