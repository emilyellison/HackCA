class Post < ActiveRecord::Base
  attr_accessible :description, :recipient, :title, :user_id
  
  belongs_to :user
end
