Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    collection do
        get 'search'
      end
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
