class JamsMusicians < ActiveRecord::Migration
  def change
    create_table :jams_musicians do |t|
      t.integer :jam_id
      t.integer :musician_id
  end
end
