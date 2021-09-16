class BinomesController < ApplicationController
  def index
    @binomes = Binome.all
    @binome = Binome.new
  end

  def create
    @binome = Binome.new(binome_params)
    @user = User.find(params[:binome][:user_id])
    @binome.user = @user
    @benevole = Benevole.find(params[:binome][:benevole_id])
    @binome.benevole = @benevole
    @client = Client.find(params[:binome][:client_id])
    @binome.client = @client

    if @binome.save
      redirect_to binomes_path
    else
      render "new"
    end
  end

  private

  def binome_params
    params.require(:binome).permit(:request_status, :to_do, :status, :connection_date)
  end
end
