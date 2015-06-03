Rails.application.routes.draw do
  get '/' => "song#home"

  get '/artists' => "song#artists"

  get '/shuffle' => "song#shuffle"
end
