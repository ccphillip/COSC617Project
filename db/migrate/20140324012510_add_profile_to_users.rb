class AddProfileToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :profile_name, :string, :default=>"user"
    add_column :users, :profile_id, :string, :unique=>true
    
    User.all.each do |user|
      user.profile_id = SecureRandom.base64(8)
      user.password  
      user.save!
    end
    
    change_column :users, :profile_id, :string, :unique=>true, :null=> false
  end
  
  def self.down
    remove_column :users, :profile_name
    remove_column :users, :profile_id
  end
  
  def create_unique_profile_id
    begin
        self.profile_id = SecureRandom.base64(8)
      end while self.class.exists?(:profile_id=>profile_id)
  end
end
