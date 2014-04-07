class CreatePrivacyLevels < ActiveRecord::Migration
  def change
    create_table :privacy_levels do |t|
      t.integer :level
      t.string :description

      t.timestamps
    end
  end
end
