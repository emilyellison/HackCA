class UsersController < ApplicationController

  def index
    if @current_user
      @users = User.order('LOWER(first) asc').all
    else
      redirect_to new_session_url, alert: 'You must be logged in to see other member\'s profiles.'
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
      render new_user_path, alert: 'There were a few errors.'
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
      redirect_to new_session_url, alert: 'You must be logged in to see other member\'s profiles.'
    end
  end
  
  def edit
    @user = User.find_by_id(params[:id])
    if @current_user.nil? 
      redirect_to new_session_url, alert: 'You must be logged in to edit your profile.'
    elsif @user.id != @current_user.id
      redirect_to edit_user_url(@current_user.id), alert: 'You may only edit your own profile.'
    end
  end
  
  def update
    @user = User.find_by_id(params[:id])
    if @user.id == @current_user.id && @user.update_attributes(params[:user])
      redirect_to user_url(@user.id), notice: 'Your profile has been updated.'
    else
      render new_user_path
    end
  end
  
end