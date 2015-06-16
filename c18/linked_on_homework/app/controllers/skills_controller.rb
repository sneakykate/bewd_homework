class SkillsController < ApplicationController

  def pick
    #render form
  end


  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      redirect_to '/users/#{@user.id}'

    else
      render :new
    end
  end

private

  def skill_params
    params.require(:skill).permit(:skill_name)
  end

end