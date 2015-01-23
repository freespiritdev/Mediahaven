Rails.application.routes.draw do
 
  devise_for :users
  resource :movies

  get 'welcome/index'

  get 'welcome/about'

  root to: 'movies#index'
end
