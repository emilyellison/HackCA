class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :find_logged_in_user
  
  def find_logged_in_user
    @current_user = User.find_by_id(session[:cookie])
  end
  
end
