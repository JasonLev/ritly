RitlyApp::Application.routes.draw do
  root :to => 'urls#index'

  resources :urls #only using create, new and show.
  get '/:hash_code', to: 'urls#redirectors'
  get '/:hash_code/preview', to: 'urls#preview'
  post 'urls/:id' => 'urls#update'
end
