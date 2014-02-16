Cook1::Application.routes.draw do

  resources :caterings, :offices
  resources "contacts", only: [:new, :create]
  root 'welcome#index'
end
