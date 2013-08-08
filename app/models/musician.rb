class Musician < ActiveRecord::Base
  authenticates_with_sorcery!

  include Gravtastic
  gravtastic :filetype => :gif, :rating => "PG", :default => "identicon"

  attr_accessible :firstname, :lastname, :email, :instrument, :password, :password_confirmation
end