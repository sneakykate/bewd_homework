class ExperiencesController < ApplicationController

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)

    if @experience.save
      redirect_to '/'
    else
      render :new
    end
  end

private

  def experience_params
    params.require(:experience).permit(:skill_id, :user_id)
  end

end