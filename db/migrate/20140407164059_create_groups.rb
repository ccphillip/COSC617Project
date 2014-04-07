class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.string :motto

      t.timestamps
    end
  end
end
