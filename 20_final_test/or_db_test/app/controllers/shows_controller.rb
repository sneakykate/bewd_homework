class ShowsController < ApplicationController

 before_action :authorize

  def new
    @show = Show.new
    
  end

  def create
    @show = Show.new(show_params)
    @client = 
    
    if @show.save
      #after we successfully add a show, take me to adding airings of the show
      redirect_to new_airing_path
    else
      flash[:message] = "Info Missing, Please try again."
      render :new
    end
  end

private

  def show_params
    params.require(:show).permit(:showname, :network_id, :placement)
  end

end