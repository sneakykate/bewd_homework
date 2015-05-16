Rails.application.routes.draw do
    get '/' => "garageio#home"
    get '/new' => "garageio#new"
    get '/cars/:id' => "garageio#show" 
    post '/cars' => "garageio#create"
end
