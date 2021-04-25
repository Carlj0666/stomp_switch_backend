# Adds all kinds of customization for data displayed in the JSON!
# See pedal serializer for more customization details

class BrandSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :pedals
end
