class Venue < ActiveRecord::Base
  attr_accessible :name, :latitude, :longitude, :creator_id
  has_many :jams
  belongs_to :musician

  # validates :address, :zipcode, presence: true, on: :save
  # validates :end_time_after_start_time, on: :save

  # private
  # def end_time_after_start_time
  #   if end_time <= start_time
  #     errors[:end_time] << "must be after start time"
  #   end
  # end

end
