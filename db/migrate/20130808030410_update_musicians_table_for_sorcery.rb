class UpdateMusiciansTableForSorcery < ActiveRecord::Migration
  def change
    add_column :musicians, :crypted_password, :string, :default => nil
    add_column :musicians, :salt, :string, :default => nil

    remove_column :musicians, :password
    remove_column :musicians, :password_confirmation

    drop_table :users
  end
end
