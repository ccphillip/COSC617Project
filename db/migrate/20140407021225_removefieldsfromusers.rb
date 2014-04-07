class Removefieldsfromusers < ActiveRecord::Migration
  def change
    remove_column :users, :website
    remove_column :users, :about_me
    remove_column :users, :location
    remove_column :users, :interests
    remove_column :users, :motivation
    remove_column :users, :age
    remove_column :users, :privacy_level
  end

end
