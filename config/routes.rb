Rails.application.routes.draw do

  devise_for :users
  root 'homes#index'

  resources :users
  resources :candidats
  resources :engagments
  resources :promesses
  resources :surveys
  resources :daties
  resources :regions
  resources :comments
  resources :communes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
