Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :notes, only: [:index, :show, :create, :edit, :update, :destroy]
      resources :users, only: [:create, :index, :show, :destroy]
      post '/login', to: 'users#login'
      get '/current_user', to: 'users#show'
      post '/signup', to: 'users#create'
      get '/show_user/:id', to: 'users#show_user'
      delete '/show_user/:id', to: 'users#destroy'
    end
  end
end
