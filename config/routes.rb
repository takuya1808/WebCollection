Rails.application.routes.draw do
  root  'web_collections#index'
  get   '/about', to: 'web_collections#about'
  get   '/show',  to: 'web_collections#show'
  get   '/new',   to: 'web_collections#new'
  get   '/edit',  to: 'web_collections#edit'
end
