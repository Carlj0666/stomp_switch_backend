class PedalsController < ApplicationController
  def index
    pedals = Pedal.all
    render json: PedalSerializer.new(pedals)

  end
end
