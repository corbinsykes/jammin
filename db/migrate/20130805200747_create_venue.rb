class CreateVenue < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address
      t.string :zipcode
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
