Rails.application.routes.draw do
  resources :categories
  resources :products
  get 'users', to: 'categories#index'

  devise_for :users
  #, :controllers => {registrations: 'registrations'}
  # get 'users', to: 'categories#index'
  # get 'users/sing_up', to: 'users#new'
  # devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'products#index'
end
