class BrandsController < ApplicationController
  def index
    brands = Brand.all
    render json: BrandSerializer.new(brands, include: [:pedals])
  end

end
