Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :posts
  end
  # resources :users
  # resources :posts
  # get '/feed', to: 'posts#feed', as: :dashboard
  get '/feed', to: 'posts#feed'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  root 'users#index'
end
