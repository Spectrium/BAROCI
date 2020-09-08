Rails.application.routes.draw do

  get '/résultat', to: 'searchs#index',as: "searchs"
  post 'searchs/create',as: "search"
  get '/mon_profil', to: 'users#show',as: "user"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks"}
  
  root 'homes#index', as: "home"

  resources :daties, path: '/date'
  resources :users, path: '/mon_profil',except: [:show] do
    resources :portraits, only: [:create]
  end


  # resources :searchs, only: [:create,:index], path: '/résultat'

  resources :actualities, path: '/actualités' do
    resources :actuphotos, only: [:create]
  end

  resources :engagments, path: '/engagements' do
    resources :comments, path: '/commentaires'
  end

  resources :regions, path: '/régions' do 
    resources :communes, path: '/communes'
  end

  resources :communes, path: '/communes' do
    resources :surveys, path: '/sondages'
    resources :candidats, path: '/candidats' do
      resources :promesses, path: '/promesses'
    end
  end

  resources :promesses, path: '/promesses' do
    resources :engagments, path: '/engagements'
    resources :suivis, path: '/suivis'
  end

  # resources :candidats do
  #   resources :promesses 
  # end
  resources :communes, path: '/communes' do
    resources :candidats, only: [:show], path: '/candidats' do
      resources :avatars, only: [:create]
    end
  end

  resources :candidats, only: [:new, :create], path: '/candidats'

  resources :promesses, only: [:show], path: '/promesses' do
    resources :pictures, only: [:create]
  end
  # resources :users, only: [:show], path: '/mon_profil'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '*path' => redirect('/404.html')
end

