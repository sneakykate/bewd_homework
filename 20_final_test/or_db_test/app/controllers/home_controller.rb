class HomeController < ApplicationController

  def home
    @clients = Client.all
    @users = User.all
  end

end