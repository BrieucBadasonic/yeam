Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/about_us", to: 'pages#about_us'

  resources :benevoles, only: [ :index, :new, :create ]
  resources :clients, only: [ :index, :new, :create ]
end
