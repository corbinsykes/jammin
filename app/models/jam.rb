class Jam < ActiveRecord::Base
  has_many :musicians
  belongs_to :venue
  has_many :instruments
end
