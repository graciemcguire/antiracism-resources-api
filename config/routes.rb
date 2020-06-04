Rails.application.routes.draw do
  resources :users
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
end
