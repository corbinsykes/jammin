class CreateJamSessions < ActiveRecord::Migration
  def change
    create_table :jamsessions do |t|
      t.integer :venue_id
      t.integer :musician_id

      t.timestamps
    end
  end
end
