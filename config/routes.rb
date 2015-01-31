Rails.application.routes.draw do
  devise_for :users
  resources :movies
  resources :shows
  resources :tunes

  get 'about' => 'welcome#about'

root to: 'welcome#index'
end
