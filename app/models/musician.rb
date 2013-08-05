class Musician < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :email, :instrument, :password, :password_confirmation
end