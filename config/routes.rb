Rails.application.routes.draw do

  get '/branches/:id/customers' => 'branches#customers', as: :customers_branch
  get '/customers/:id/accounts' => 'customers#accounts', as: :accounts_customer

#resources
  resources :customers
  resources :branches
  resources :accounts

#sign up
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

#log in
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/' => 'users#new'
  get '/home' => 'branches#home'
  
end
