class Webapp < ActiveRecord::Base
  attr_accessible :description, :github, :title, :website, :new_team_attributes, :existing_team_attributes, :event_id
  attr_writer :new_team_attributes, :existing_team_attributes
  
  belongs_to :event
  has_many :teams
  has_many :users, through: :teams
  
  validates :title, presence: true
  validates :description, presence: true
  validates :website, presence: true
  validates :event_id, presence: true
  
  after_update :save_teams

  def new_team_attributes=(team_attributes)
    team_attributes.each do |attributes|
      teams.build(attributes)
    end
  end
  
  def existing_team_attributes=(team_attributes)
    teams.reject(&:new_record?).each do |team|
      attributes = team_attributes[team.id.to_s]
      if attributes
        team.attributes = attributes
      else
        teams.delete(team)
      end
    end
  end
  
  def save_teams
    teams.each do |team|
      team.save(validate: false)
    end
  end
 
end
