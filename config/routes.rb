Rails.application.routes.draw do

  get 'pictures/create'
  get 'avatars/create'
  devise_for :users
  root 'homes#index', as: "home"

  resources :daties
  resources :users

  resources :engagments do
    resources :comments
  end

  resources :regions do 
    resources :communes
  end

  resources :communes do
    resources :surveys
    resources :candidats do
      resources :promesses
    end
  end

  resources :promesses do
    resources :engagments
    resources :suivis
  end

  # resources :candidats do
  #   resources :promesses 
  # end
  resources :communes do
  resources :candidats, only: [:show] do
  resources :avatars, only: [:create]
  end
end

  resources :candidats, only: [:new, :create]

resources :promesses, only: [:show] do
resources :pictures, only: [:create]
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
