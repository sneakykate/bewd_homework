class HomeController < ApplicationController

  def home
    @companies = Company.all
    @users = User.all
  end

end