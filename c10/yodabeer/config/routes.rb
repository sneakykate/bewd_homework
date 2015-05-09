Rails.application.routes.draw do
  get '/' => "brewyoda#home"

  get '/cartoon' => "brewyoda#cartoon"

  get '/anotherone' => "brewyoda#home"
end
