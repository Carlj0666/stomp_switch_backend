class PedalsController < ApplicationController
  
  def index
    pedals = Pedal.all
    render json: PedalSerializer.new(pedals)
  end

  def show
    pedal = Pedal.find(params[:id])
    render json: PedalSerializer.new(pedal)
  end

  #pedal belongs to a brand so this won't save
  def create
    pedal = Pedal.new(pedalParams)
    if pedal.save
      render json: PedalSerializer.new(pedal)
    else 
      render json: {error: "ERROR line 17 in pedals controller"}
  end
end

# created accepts_nested_attributes_for :pedals on brands controller, hmm.

  private
  def pedalParams
    params.require(:pedal).permit(:name, :effect, :price, :brand_name, :image_link)
  end
end
