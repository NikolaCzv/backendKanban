Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :notes
      resources :users
      post '/login', to: 'users#login'
      get '/current_user', to: 'users#show'
      post '/signup', to: 'users#create'
      get '/show_user/:id', to: 'users#show_user'
      patch '/show_user/:id', to: 'users#update'
      put '/show_user/:id', to: 'users#update'
      delete '/show_user/:id', to: 'users#destroy'
    end
  end
end
