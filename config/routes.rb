Rails.application.routes.draw do
  devise_for :users
  root "reviews#index"
  resources :users, only: [:edit, :update]
  resources :reviews, only: [:index, :new, :create, :show, :destroy, :edit, :update]
end
