Rails.application.routes.draw do
  devise_for :users
  resources :users
  root 'dashboard#index'
end
