class BenevolesController < ApplicationController
  def index
    @benevoles = Benevole.all
    @benevole = Benevole.new
  end

  def create
    @benevole = Benevole.new(benevole_params)
    if @benevole.save
      redirect_to benevoles_path
    else
      render "new"
    end
  end

  private

  def benevole_params
    params.require(:benevole).permit(:first_name, :last_name, :telephone, :email)
  end
end
