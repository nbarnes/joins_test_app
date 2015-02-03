Rails.application.routes.draw do

  resources :users, only: [:index, :create, :destroy]
  resources :messages, only: [:index, :create, :destroy]

  root 'messages#index'

  get '/*foo', to: redirect('/')
end
