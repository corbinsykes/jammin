class VenueSerializer < ActiveModel::Serializer
  attributes :id, :address, :zipcode
  has_many :jams
end
