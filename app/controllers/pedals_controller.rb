
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
  

  def create
    pedal = Pedal.new(pedal_params)
    #find or create by brand obj from pedal params store to variable 
    # Changed brand_name to brand_id....line 22...Needs review
    new_brand = Brand.find_or_create_by({name: pedal_params['brand_name']})
    # byebug
    pedal.brand = new_brand
    if pedal.save
      # byebug
      render json: PedalSerializer.new(pedal)
    else 
      render json: {error: pedal.errors}
  end
end

def destroy
  pedal = Pedal.find(params[:id])
  if pedal.destroy
    render body: {}, status: :no_content
  end
end


# created accepts_nested_attributes_for :pedals on brands controller, hmm.

  private
  def pedal_params
    params.require(:pedal).permit(:name, :price, :effect, :brand_id, :image_link, :brand_name)
  end
end
