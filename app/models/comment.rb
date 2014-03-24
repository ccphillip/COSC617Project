class Comment < ActiveRecord::Base
  
  attr_accessible :body, :name,:article,:article_id
  belongs_to :article
  
   validates_presence_of :body
end
