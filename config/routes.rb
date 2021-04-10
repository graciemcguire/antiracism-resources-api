Rails.application.routes.draw do
  resources :votes
  resources :resources
  resources :users
  post '/login', to: 'auth#login'
  get '/auth', to: 'auth#persist'
  get '/downvotes/:resource_id', to: 'votes#downvotes'
  get '/upvotes/:resource_id', to: 'votes#upvotes'
end
