class PedalsController < ApplicationController
  def index
    pedals = Pedal.all
    render json: PedalSerializer.new(pedals)
  end

  def show
    pedal = Pedal.find(params[:id])
    render json: PedalSerializer.new(pedal)
  end

  def create
    pedal = Pedal.new(pedalParams)
    if pedal.save
      render json: PedalSerializer.new(pedal)
    else 
      render json: {error: "ERROR line 17 in pedals controller"}
  end

  private
  def pedalParams
    params.require(:pedal).permit(:name, :price, :effect, :image_link, :brand_name)
  
end
