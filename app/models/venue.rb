class Venue < ActiveRecord::Base
  attr_accessible :jam_buddy_id, :jam_buddy, :end_time, :address, :city, :state, :zipcode, :musician_id, :musician, :start_time, :zipcode

  belongs_to :musician
  belongs_to :jam_buddy, class_name: "Musician"

  validates :address, :city, :state, :zipcode, presence: true, on: :save
  validates :end_time_after_start_time, on: :save

  private
  def end_time_after_start_time
    if end_time <= start_time
      errors[:end_time] << "must be after start time"
    end
  end
end
