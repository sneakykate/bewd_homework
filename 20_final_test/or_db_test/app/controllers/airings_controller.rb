class AiringsController < ApplicationController

  def new
    @airing = Airing.new
    #not sure I'll use this either, but look up show from params?
    @show = Show.find(params[:show_id])
  end

  def create
    @airing = Airing.new(airing_params)

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

  def airing_params
    params.require(:airing, :date).permit(:showname, :network_id, :placement)
  end

end