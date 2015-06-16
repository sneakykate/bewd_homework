class ExperiencesController < ApplicationController

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @user = user_id
    if @experience.save
        redirect_to user_path(@user)
    else
      render :new
    end
  end

private

  def experience_params
    params.require(:experience).permit(:skill_id, :user_id)
  end

end