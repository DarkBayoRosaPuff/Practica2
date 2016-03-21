class DonacionesController < ApplicationController
  def show
    @donacione = Donacione.find(params[:id])
  end

  def new
  end

  def create
    @donacione = Donacione.new(donacione_params)
    
    @donacione.save
    redirect_to @donacione
  end
  
  private
  def donacione_params
    params.require(:donacione).permit(:donacione)
  end
  
end
