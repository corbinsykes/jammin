class Musician < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :instrument
end