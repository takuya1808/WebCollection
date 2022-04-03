Rails.application.routes.draw do
  get 'web_collections/index'
  get 'web_collections/about'
  get 'web_collections/show'
  get 'web_collections/new'
  get 'web_collections/edit'
  root 'web_collections#index'
end
