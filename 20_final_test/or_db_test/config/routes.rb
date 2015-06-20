Rails.application.routes.draw do

  root 'home#home'
  
  get '/login' => 'sessions#new' # login page
  post '/login' => 'sessions#create' # login form POSTs here; authentication logic
  get '/logout' => 'sessions#destroy' # logout and redirect to root

  resources :users
  resources :shows
  resources :airings
  resources :clients
  resources :networks

end
