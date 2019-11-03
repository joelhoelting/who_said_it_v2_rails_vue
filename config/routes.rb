Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :games, only: [:create]
      resources :characters, only: [:index, :show]
      resources :quotes, only: [:show]
      get '/profile', to: 'auth#profile'
      post '/signup', to: 'auth#signup'
      post '/signin', to: 'auth#signin'
    end
  end
end