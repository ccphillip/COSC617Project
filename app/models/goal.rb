class Goal < ActiveRecord::Base
  attr_accessible :date, :description, :name, :priority, :status
end
