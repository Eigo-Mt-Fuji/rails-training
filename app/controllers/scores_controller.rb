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
  def create

    # リクエストパラメータを取得
    score = params[:score]
    user_id = params[:user_id]
    
    # Resultクラス(resultテーブル用のモデル)のcreateメソッドを実行・DB上のresultテーブルにレコードを新規登録
    result = Result.create({:user_id => user_id, :score => score });

    respond_to do |format|
      format.json { 
        render :json => { status: "ok", result: result.attributes }
      } # ここを修正してます
    end
  end
end
