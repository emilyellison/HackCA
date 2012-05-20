class Team < ActiveRecord::Base
  attr_accessible :user_id, :webapp_id
  
  belongs_to :user
  belongs_to :webapp
  
end
