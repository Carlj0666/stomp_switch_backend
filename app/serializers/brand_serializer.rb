# Adds all kinds of customization for data displayed in the JSON!
# See pedal serializer for more customization details

class BrandSerializer
  include FastJsonapi::ObjectSerializer
  has_many :pedals
  attributes :name
  
end
