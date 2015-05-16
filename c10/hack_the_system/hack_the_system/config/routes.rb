Rails.application.routes.draw do
  get '/' => 'home#ssmainframe'
  post '/mainframe' => 'checkpass#login'
  get '/nope' => 'bad#noaccess'
end

#get '/greg' => 'teacher#greg' if you forget to do def greg end within the controller (and there's no logic in them anyway) rails will still render the view.

#you can have the same controller for multiple views