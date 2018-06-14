Rails.application.routes.draw do
  devise_for :users
##  get 'practice/index'
  get 'diary/index'
  get 'practice/index'
  post 'practice/index'

  resources :daily_reports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
