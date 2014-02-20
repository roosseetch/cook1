Cook1::Application.routes.draw do

  devise_for :users
  resources :caterings, :offices
  resources "contacts", only: [:new, :create]
  root 'welcome#index'
end
