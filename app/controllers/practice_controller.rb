class PracticeController < ApplicationController
  def index
    @title = params[:title]
    respond_to do |format|
      format.html
      format.json { render :json => {title: @title}}
    end
  end
end
