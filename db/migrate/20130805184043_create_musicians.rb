class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :instrument
      t.string :password_hash
      t.string :password_salt
      t.timestamps
    end
  end
end
