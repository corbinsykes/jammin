class AddDescriptionColumnAndGenreColumnToJams < ActiveRecord::Migration
  def change
    add_column :jams, :description, :text
    add_column :jams, :genre, :string
  end
end
