Rails.application.routes.draw do
  devise_for :users
  resources :users
  get :new_bmi, to: "calculations#new"
  post :bmi, to: "calculations#calculate"
  get :show_bmi, to: "calculations#show"
  root 'dashboard#index'
end
