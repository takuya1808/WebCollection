Rails.application.routes.draw do
  devise_for :users
    devise_scope :user do
      get '/users/sign_out', to: 'devise/sessions#destroy'
    end
  root  'web_collections#index'
  get   '/about',     to: 'web_collections#about'
  get   '/new',       to: 'web_collections#new'
  post  '/new',       to: 'web_collections#create'
  resources :web_collections, only: [:show, :edit, :update, :destroy]
end
