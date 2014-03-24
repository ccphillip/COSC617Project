class AddProfileToUsers < ActiveRecord::Migration
  def change
      add_column :users, :website, :string
      add_column :users,:about_me, :string
      add_column :users,:location, :string
  end
end
