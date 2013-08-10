class Jam < ActiveRecord::Base
  attr_accessible :genre, :description, :end_time, :start_time, :creator_id
  has_and_belongs_to_many :musicians
  belongs_to :venue
  belongs_to :creator, class_name: "Musician"
  has_many :instruments
end
