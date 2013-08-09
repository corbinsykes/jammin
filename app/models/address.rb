class Address
  extend ActiveModel::Naming
  include ActiveModel::Conversion  ## takes care of initialize for us
  attr_accessor :name, :street, :city, :state, :zipcode

  def initialize(options={})
    @name = options[:name]
    @street = options[:street]
    @city = options[:city]
    @state = options[:state]
    @zipcode = options[:zipcode]

  end

  def persisted?; false; end

  def as_venue
    address = Geocoder.search("#{address}, #{city}, #{state} #{zipcode}")
    return nil if address.blank?

    latitude = address.first.latitude
    longitude = address.first.longitude
    Venue.new name: name, latitude: latitude, longitude: longitude
  end
end