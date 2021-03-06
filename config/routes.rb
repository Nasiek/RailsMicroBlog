Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/all' => 'users#all'
  resources :users
  resources :posts
  # resources :users do
  # 	resources :posts
  # end
  resources :comments, except: [:show, :index]
  root 'users#index'
  get '/myprofile' => 'users#myprofile'

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
