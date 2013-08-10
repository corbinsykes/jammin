class AddCreatorIdToVenuesModel < ActiveRecord::Migration
  def change
    add_column :venues, :creator_id, :integer
  end
end
