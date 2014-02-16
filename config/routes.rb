Cook1::Application.routes.draw do

  resources :caterings

  root 'welcome#index'
end
