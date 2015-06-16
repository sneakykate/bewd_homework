class ShowsController < ApplicationController

  def new
    @show = Show.new
    #Not sure I'll use this, find the network for the show...add from within network? TBD
    @network = Network.find(params[:network_id])
  end

  def create
    @show = Show.new(show_params)

    if @show.save
      #after we successfully add a show, take me to adding airings of the show
      redirect_to new_airing_path
    else
      # if the post fails, I need to look up the network again
      # because new.html.erb includes the @network instance variable.
      @network = Network.find(params[:network_id])
      render :new
    end
  end

private

  def show_params
    params.require(:show).permit(:showname, :network_id, :placement)
  end

end