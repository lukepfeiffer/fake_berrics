Rails.application.routes.draw do
  root 'pages#home'

  resources :videos
  resources :products
  resources :news
  resources :users

  get '/features', to: 'pages#features'
  get '/log_in', to: 'pages#log_in'

  post 'sessions', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
end
