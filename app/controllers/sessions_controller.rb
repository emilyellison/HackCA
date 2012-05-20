class SessionsController < ApplicationController
  
  def new
    
  end
  
  def create
    user = User.find_by_email(params[:email])
    
    if user && user.authenticate(params[:password])
      session[:cookie] = user.id
      redirect_to root_url, notice: "Welcome, #{user.first}!"
    else
      redirect_to new_session_url, notice: 'Invalid username/password'
    end
  end
  
  def destroy
    reset_session
    redirect_to root_url, notice: 'Come back soon!'
  end
  
end