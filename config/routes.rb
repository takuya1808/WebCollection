Rails.application.routes.draw do
  root  'web_collections#index'
  get   '/about',     to: 'web_collections#about'
  get   '/show/:id',  to: 'web_collections#show'
  get   '/new',       to: 'web_collections#new'
  post  '/new',       to: 'web_collections#create'
  get   '/edit/:id',  to: 'web_collections#edit'
end
