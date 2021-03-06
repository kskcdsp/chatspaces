Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:edit, :update, :destroy]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
  root 'messages#index'
end
