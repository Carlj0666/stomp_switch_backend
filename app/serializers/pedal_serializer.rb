class PedalSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :effect, :price
end
