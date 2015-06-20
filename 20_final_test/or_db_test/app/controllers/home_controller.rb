class HomeController < ApplicationController

  def home
  #  @clients = Client.all
    @users = User.all
    @clients = Client.order(:clientname)
  end

end