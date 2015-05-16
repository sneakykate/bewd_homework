class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead. <-- this would get rid of the authenticity token issue
  protect_from_forgery with: :exception
end
