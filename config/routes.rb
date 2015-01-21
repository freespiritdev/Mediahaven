Rails.application.routes.draw do
  resource :movies

  get 'welcome/index'

  get 'welcome/about'

  root to: 'movies#index'
end
