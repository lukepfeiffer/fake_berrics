Rails.application.routes.draw do
  root 'pages#home'

  resources :videos
  resources :reviews
  resources :products
  resources :news_articles
  resources :users do
    member do
      post 'add_to_cart'
    end
  end

  get '/features', to: 'videos#features'
  get '/log_in', to: 'pages#log_in'
  get '/view_cart', to: 'carts#view_cart'

  post 'sessions', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
end
