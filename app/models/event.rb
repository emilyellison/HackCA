class Event < ActiveRecord::Base
  attr_accessible :description, :end_date, :location, :start_date, :subtitle, :title, :website
  
  has_many :webapps
  
  def event_tag
    "#{title}: #{start_date_in_words} - #{end_date_in_words}"
  end
  
  def start_date_in_words
    "#{start_date.strftime("%B %e")}, #{start_date.strftime("%Y")}"
  end
  
  def end_date_in_words
    "#{end_date.strftime("%B %e")}, #{end_date.strftime("%Y")}"
  end
end
