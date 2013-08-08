class Musician < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :instrument, :password, :password_confirmation
  has_and_belongs_to_many :jams
  has_and_belongs_to_many :instruments
end