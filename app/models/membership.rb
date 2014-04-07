class Membership < ActiveRecord::Base
  attr_accessible :admin, :group_id, :user_id
  belongs_to :user
  belongs_to :group
end
