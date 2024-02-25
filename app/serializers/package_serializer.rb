class PackageSerializer
  include JSONAPI::Serializer
  attributes :name, :duration, :daily_profits, :total_profits, :price, :active
end
