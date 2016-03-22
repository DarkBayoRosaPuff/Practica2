class DonacionesController < ApplicationController
  def index
    @donaciones = Donacione.all
  end
  
  def show
    @donacione = Donacione.find(params[:id])
  end

  def new
    @donacione = Donacione.new
  end
  
  def edit
    @donacione = Donacione.find(params[:id])
  end
  
  def create
    @donacione = Donacione.new(donacione_params)
    
    if @donacione.save
      redirect_to @donacione
    else
      render 'new'
    end
  end

  def destroy
    @donacione = Donacione.find(params[:id])
    @donacione.destroy
    
    redirect_to donaciones_path
  end
  
  private
  def donacione_params
    params.require(:donacione).permit(:nombre_hospital, :direccion_hospital, :tel_hospital, :titulo, :descripcion)
  end
  
end
