class InstrumentsMusicians < ActiveRecord::Migration
  def change
    create_table :instruments_musicians do |t|
      t.integer :instrument_id
      t.integer :musician_id
    end
  end
end
