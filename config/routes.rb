Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'users#index'
  get '/users', to: 'users#index'
  get '/users/new', to: 'users#index', as: 'new_user'
  post '/users', to: 'users#create'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
    end
  end
end
