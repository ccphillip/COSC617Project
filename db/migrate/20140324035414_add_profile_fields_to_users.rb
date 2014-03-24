class AddProfileFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :interests, :string
    add_column :users, :motivation, :string
    add_column :users, :age, :integer
  end
end
