# Adds all kinds of customization for data displayed in the JSON!

class PedalSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :brand
  attributes :name, :effect, :price, :brand_name, :image_link, :brand_id

end
