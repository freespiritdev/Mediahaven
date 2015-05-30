Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
  resources :movies do
    collection do
        get 'search'
      end
      resources :reviews, except: [:index]
    end

  resources :shows do
    collection do
      get 'search'
    end
  end

  resources :tunes do
    collection do
      get 'search'
    end
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
