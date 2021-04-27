class Pedal < ApplicationRecord
  belongs_to :brand

  def brand_name
    self.brand.name
  end

  def brand_name=(name)
  end
  
end
