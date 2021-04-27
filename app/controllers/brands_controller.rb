class BrandsController < ApplicationController
  def index
    brands = Brand.all
    render json: BrandSerializer.new(brands, include: [:pedals])
    accepts_nested_attributes_for :pedals
  end

end
