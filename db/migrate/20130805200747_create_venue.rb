class CreateVenue < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :address

      t.timestamps
    end
  end
end
