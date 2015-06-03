class UsersController < ApplicationController

  def new
    @user = User.new
    @companies = Company.all
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to '/'
    else
      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :company_id, :password, :password_confirmation)
  end

end