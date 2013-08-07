class Musician < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :instrument, :password, :password_confirmation
  has_many :jams
  has_many_and_belongs_to_many :instruments
end