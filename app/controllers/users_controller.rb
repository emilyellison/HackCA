class UsersController < ApplicationController

  def index
    if @current_user
      @users = User.order('LOWER(first) asc').all
    else
      redirect_to new_session_url, notice: 'You must be logged in to see other member\'s profiles.'
    end
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to new_session_url, notice: "Welcome to Hack@CA, #{@user.first}! Sign in below."
    else
      render new_user_path, notice: 'There were a few errors.'
    end
  end
  
  def show
    if @current_user
      @user = User.find_by_id(params[:id])
      @background = []    
      @background << 'Development' if @user.dev == true
      @background << 'Design' if @user.design == true
      @background << 'HTML/CSS' if @user.html_css == true
      
    else
      redirect_to new_session_url, notice: 'You must be logged in to see other member\'s profiles.'
    end
  end
  
end