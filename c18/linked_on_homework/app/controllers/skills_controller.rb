class SkillsController < ApplicationController

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)

    if @skill.save
      redirect_to '/'
    else
      render :new
    end
  end

private

  def skill_params
    params.require(:skill).permit(:skill_name)
  end

end