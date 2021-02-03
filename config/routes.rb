Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :trips, :checkpoints, :favorites
      post '/login', to: 'auth#create'
      get '/profile', to: 'auth#show'
    end
  end
end 
