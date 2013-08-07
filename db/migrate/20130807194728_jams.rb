class Jams < ActiveRecord::Migration
  def change
    create_table :jams do |t|
      t.integer :venue_id
      t.integer :creator_id

      t.timestamps
    end
  end
end
