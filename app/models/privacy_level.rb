class PrivacyLevel < ActiveRecord::Base
  attr_accessible :description, :level
  has_many :profiles
  
  def level_description
    "#(level) #(description)"
  end
end
