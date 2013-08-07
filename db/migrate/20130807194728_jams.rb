class Jams < ActiveRecord::Migration
  def change
    create_table :jams do |t|
      t.integer :venue_id
      t.integer :creator_id
      t.string :start_time
      t.string :end_time

      t.timestamps
    end
  end
end
