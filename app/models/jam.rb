class Jam < ActiveRecord::Base
  has_and_belongs_to_many :musicians
  belongs_to :venue
  belongs_to :creator, class_name: "Musician"
  has_many :instruments
end
