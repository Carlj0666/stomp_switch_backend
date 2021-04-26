# Adds all kinds of customization for data displayed in the JSON!

class PedalSerializer
  include FastJsonapi::ObjectSerializer
  belongs_to :brand
  attributes :name, :effect, :price, :brand_name, :image_link

  # This adds "effects pedal" to the end of the name, or any other thing to customize
  # attribute :name do |object|
  #   "#{object.name} effects pedal"
  # end

  #model method, for more customization (must include in the serializer attributes list)
  # def capitalized_name
  #   self.name.upcase
  # end


end
