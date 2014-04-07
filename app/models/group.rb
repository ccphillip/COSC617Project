class Group < ActiveRecord::Base
  attr_accessible :description, :motto, :name
  
  has_many :users, through: :memberships
  has_many :memberships, dependent: :destroy
end
