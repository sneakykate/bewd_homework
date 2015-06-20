class NetworksController < ApplicationController

  def new
    @network = Network.new
    #Not sure I'll use this, find the network for the show...add from within network? TBD
  end

  def create
    @network = Network.new(network_params)

    if @network.save
      #after we successfully add a show, take me to adding airings of the show
      redirect_to '/'
    else
      render :new
    end
  end
  def index
    @network = Network.all
  end
  def show
    @network = Network.find(params[:id])
    if @bcast_month == true
      @billingsched = "Broadcast"
    else @billingsched = "Calendar"
    end
  end

private

  def network_params
    params.require(:network).permit(:netname, :bcast_month)
  end

end