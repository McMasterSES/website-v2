Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  get '/index', to: 'events#index'
  get '/events', to: 'events#events'

  resources :exec_promotions
end
