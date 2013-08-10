class SetCreatorIdOnOriginalVenues < ActiveRecord::Migration
  def up
    musician = Musician.first
    Venue.where(creator_id: nil).each do |venue|
      venue.update_attribute(:creator_id, musician.id)
    end
  end

  def down
  end
end
