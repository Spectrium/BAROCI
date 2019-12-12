Rails.application.routes.draw do

  get 'avatars/create'
  devise_for :users
  root 'homes#index', as: "home"

  resources :users
  resources :daties
  resources :comments
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
  end
  resources :candidats do
    resources :promesses 
  end
  resources :communes do
  resources :candidats, only: [:show] do
  resources :avatars, only: [:create]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
