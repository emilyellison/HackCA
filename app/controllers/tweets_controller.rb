require 'json'
require 'open-uri'

class TweetsController < ApplicationController
  
  def index
    @json = JSON.parse(open('http://search.twitter.com/search.json?q=cahack&rpp=5&include_entities=true&with_twitter_user_id=true&result_type=mixed').read)
    @tweets = []
    @json['results'].each do |json| 
      @tweets << { created_at: json['created_at'], 
                   text: json['text'], 
                   hashtags: json['entities']['hashtags'],
                   from_user: json['from_user'],
                   from_user_name: json['from_user_name'] }      
    end
  end  
  
end