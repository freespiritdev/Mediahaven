Rails.application.routes.draw do
 
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :movies do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end

  resources :shows do
    collection do
      get 'search'
    end
    resources :reviewtvs, except: [:show, :index]
  end

  resources :tunes do
    collection do
      get 'search'
    end
    resources :reviewtunes, except: [:show, :index]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
