class AddLatitudeAndLongitudeToVenue < ActiveRecord::Migration
  def change
    add_column :venues, :latitude, :string, :nullable => false
    add_column :venues, :longitude, :string, :nullable => false
    add_column :venues, :name, :string, :nullable => false

    remove_column :venues, :address
  end
end
