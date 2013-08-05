class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :instrument
      t.string :password
      t.string :password_confirmation
      t.timestamps
    end
  end
end
