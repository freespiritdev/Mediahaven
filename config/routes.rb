Rails.application.routes.draw do
  devise_for :users
  resource :movies
  resource :series


    get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
