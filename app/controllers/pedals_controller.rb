class PedalsController < ApplicationController
  def index
    pedals = Pedal.all
    render json: PedalSerializer.new(pedals)
  end

  def show
    pedal = Pedal.find(params[:id])
    render json: PedalSerializer.new(pedal)
  end
  
end