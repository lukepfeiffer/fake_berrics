Rails.application.routes.draw do
  root 'pages#home'

  resources :videos
  resources :products
  resources :news

  get '/features', to: 'pages#features'
end
