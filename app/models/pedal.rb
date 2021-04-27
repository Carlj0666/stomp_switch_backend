class Pedal < ApplicationRecord
  belongs_to :brand

  def brand_name
    self.brand.name
  end

  def brand_is
    pedal.brand = Brand.last
  end

end
