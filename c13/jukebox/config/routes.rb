Rails.application.routes.draw do
     
     get '/' => "artists#home"

     get '/shuffle' => "artists#shuffle"

     get '/artists' => "artists#artists"

end
