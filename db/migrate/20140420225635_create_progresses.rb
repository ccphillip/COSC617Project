class CreateProgresses < ActiveRecord::Migration
  def change
    create_table :progresses do |t|
      t.integer :progress_number
      t.string :update

      t.timestamps
    end
  end
end
