class Jam < ActiveRecord::Base
  has_many :musicians
  has_one :venue
  has_many :instruments
end
