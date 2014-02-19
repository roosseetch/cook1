Cook1::Application.routes.draw do

  get "omniauth_callbacks/facebook"
  get "omniauth_callbacks/vkontakte"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users

  resources :caterings, :offices
  resources "contacts", only: [:new, :create]
  root 'welcome#index'
end


