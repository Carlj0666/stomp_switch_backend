class PedalsController < ApplicationController
  def index
    pedals = Pedal.all
    render json: pedals.to_json(except: [:created_at, :updated_at])

  end
end
