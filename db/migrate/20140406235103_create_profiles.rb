class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :website
      t.string :about_me
      t.string :location
      t.string :interests
      t.string :motivation
      t.integer :age
      t.integer :privacy_level_id

      t.timestamps
    end
  end
end
