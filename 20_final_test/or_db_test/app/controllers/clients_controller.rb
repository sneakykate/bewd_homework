class ClientsController < ApplicationController
 
 before_action :authorize

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
#     @client.logourl = nil
    
# #add the rest of the stuff for this   
#    LogoUploader.perform_async(@client.id, client_params[:logourl]) # worker

    if @client.save
      redirect_to '/'
    else
      render :new
    end
  end
  
  def index
    @client = Client.order(:clientname)
  end

  def show
    @client = Client.find(params[:id])
    @airing = Airing.all
  end

private

  def client_params
    params.require(:client).permit(:clientname, :commissionstype, :AM_name, :PM_or_AC_name, :PM_or_AC2_name, :Analytics_name, :logourl)
  end

end