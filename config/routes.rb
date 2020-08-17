Rails.application.routes.draw do
  resources :companies
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :stars
  resources :posts
  resources :searches
  root 'posts#index'
  get '/login', to: 'posts#login'
  get '/test', to: 'posts#index2'
  post 'posts/search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
