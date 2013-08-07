class Jam < ActiveRecord::Base
  has_and_belongs_to_many :musicians
  belongs_to :venue
  has_many :instruments
end
