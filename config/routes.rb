Rails.application.routes.draw do
  devise_for :users
  resources :movies
  resources :shows

  get 'about' => 'welcome#about'

root to: 'welcome#index'
end
