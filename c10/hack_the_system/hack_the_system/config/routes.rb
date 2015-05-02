Rails.application.routes.draw do
  get '/' => 'home#ssmainframe'
  post '/mainframe' => 'checkpass#login'
  get '/nope' => 'bad#noaccess'
end
