Rails.application.routes.draw do
  resources :votes
  resources :resources
  resources :users
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
end
