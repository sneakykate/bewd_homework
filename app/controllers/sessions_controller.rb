# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController

  def new
  end


  # authentication logic and cookie stuff
  def create
    @user = User.find_by(email: params['email'])

    if @user && @user.authenticate(params['password'])
      session[:user_id] = @user.id

      flash[:message] = "Login successful!"

      redirect_to '/'
    else
      flash[:message] = "Incorrect Username or Password. Please try again."

      render :new
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end