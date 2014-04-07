class Profile < ActiveRecord::Base
  attr_accessible :about_me, :age, :interests, :location, :motivation, :privacy_level_id, :user_id, :website
  belongs_to :user
  belongs_to :privacy_level
  
  before_save { privacy_level_id.to_i }
end
