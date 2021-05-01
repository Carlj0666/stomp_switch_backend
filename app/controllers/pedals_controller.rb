
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
    pedal = Pedal.new(pedal_params)
    new_brand = Brand.find_or_create_by({name: pedal_params['brand_name']})
    pedal.brand = new_brand
    if pedal.save
      render json: PedalSerializer.new(pedal)
    else 
      render json: {error: pedal.errors}
  end
end

def destroy
  pedal = Pedal.find(params[:id])
  pedal.destroy
end


  private
  def pedal_params
    params.require(:pedal).permit(:name, :price, :effect, :brand_id, :image_link, :brand_name)
  end
end
