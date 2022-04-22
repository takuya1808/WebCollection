Rails.application.routes.draw do
  devise_for :users

  root  'web_collections#index'
  get   '/about',     to: 'web_collections#about'
  get   '/new',       to: 'web_collections#new'
  post  '/new',       to: 'web_collections#create'
  resources :web_collections, only: [:show, :edit, :update, :destroy]
end
