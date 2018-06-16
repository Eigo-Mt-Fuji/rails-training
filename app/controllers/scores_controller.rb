class ScoresController < ApplicationController
  def index
    @highscores = [
        {:user_id => 10, :user_name => "John, No1", :score => 1000},
        {:user_id => 5, :user_name => "ボブ, No2", :score => 900},
        {:user_id => 29, :user_name => "一郎, No3", :score => 900},
        {:user_id => 12029, :user_name => "一郎, No3", :score => 900},
        {:user_id => 3, :user_name => "甘栗太郎", :score => 40}
    ];
  end
end
