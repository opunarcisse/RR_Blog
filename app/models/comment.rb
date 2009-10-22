class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :commenter, :body
  validates_uniqueness_of :body, :scope => :commenter
end
