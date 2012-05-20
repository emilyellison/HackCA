class Webapp < ActiveRecord::Base
  attr_accessible :description, :github, :title, :website, :team_attributes, :event_id
  attr_writer :team_attributes
  
  belongs_to :event
  has_many :teams
  has_many :users, through: :teams
  
  validates :title, presence: true
  validates :description, presence: true
  validates :website, presence: true
  validates :event_id, presence: true
  
  def team_attributes=(team_attributes)
    team_attributes.each do |attributes|
      teams.build(attributes)
    end
  end
 
end
