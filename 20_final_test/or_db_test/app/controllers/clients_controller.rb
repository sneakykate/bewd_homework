class ClientsController < ApplicationController

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to '/'
    else
      render :new
    end
  end
  
  def index
    @client = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

private

  def client_params
    params.require(:client).permit(:clientname, :commissionstype, :AM_name, :PM_or_AC_name, :PM_or_AC2_name, :Analytics_name)
  end

end