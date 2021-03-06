Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :tweets

  root 'tweets#index'

  resources :user, only: [:show], param: :username

end
