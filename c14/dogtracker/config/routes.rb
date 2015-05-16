Rails.application.routes.draw do

  get '/' => 'dogtracker#home'  
  get '/dogs/:id' => 'dogtracker#show'
  post '/dogs' => 'dogtracker#create'

end
