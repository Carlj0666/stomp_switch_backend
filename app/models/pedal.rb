class Pedal < ApplicationRecord
  belongs_to :brand

  def brand_name
    self.brand.name
  end
  
end
