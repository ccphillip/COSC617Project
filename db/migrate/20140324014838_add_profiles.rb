class AddProfiles < ActiveRecord::Migration
  def up
    create_table :profile, :force => true do |t|
      t.integer :user_id
      t.string :website
      t.string :about_me
      t.string :location
      t.datetime :last_active
      
    end
    add_index :profile, [:user_id]
  end

  def down
    drop_table :profile
  end
end
