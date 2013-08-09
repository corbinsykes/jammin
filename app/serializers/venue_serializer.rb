class VenueSerializer < ActiveModel::Serializer
  attributes :id, :latitude, :longitude
  has_many :jams
end
