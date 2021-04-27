
class PedalsController < ApplicationController
  
  def new
  end

  def index
    pedals = Pedal.all
    render json: PedalSerializer.new(pedals)
  end

  def show
    pedal = Pedal.find(params[:id])
    render json: PedalSerializer.new(pedal)
  end
  
  #pedal belongs to a brand so this won't save...hmmmmmm
  def create
    pedal = Pedal.new(pedalParams)
    #find or create by brand obj from pedal params store to variable 
    brand = Brand.find_or_create_by({name: pedalParams['brand_name']})
    pedal.brand = brand
    if pedal.save
      render json: PedalSerializer.new(pedal)
    else 
      render json: {error: pedal.errors}
  end
end

# created accepts_nested_attributes_for :pedals on brands controller, hmm.

  private
  def pedalParams
    params.require(:pedal).permit(:name, :effect, :price, :brand_name, :image_link)
  end
end
