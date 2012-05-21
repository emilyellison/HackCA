class WebappsController < ApplicationController
  
  def new
    if @current_user
      @webapp = Webapp.new
      5.times { @webapp.teams.build }
    else
      redirect_to root_url, alert: 'You must be logged in to add a project!'
    end
  end
  
  def create
    @webapp = Webapp.new(params[:webapp])
    if @webapp.save
      redirect_to root_url, notice: 'Congrats on adding your app!'
    else
      render 'webapps/new', alert: 'There were some errors.'
    end
  end
  
  def show
    @webapp = Webapp.find_by_id(params[:id])
    @team_members = []
    @webapp.teams.each do |team|
      @team_members << team.user_id
    end
  end
  
  def destroy
    @webapp = Webapp.find_by_id(params[:id])
    @webapp.destroy
    redirect_to root_url, notice: 'Your hack has been demolished!'
  end
  
  def edit
    if @current_user
      @webapp = Webapp.find_by_id(params[:id])
    else
      redirect_to new_session_url, alert: 'You must be signed in to edit your hack.'
    end
  end
  
  def update
    params[:webapp][:existing_team_attributes] ||= {}
    
    @webapp = Webapp.find_by_id(params[:id])
    if @webapp.update_attributes(params[:webapp])
      redirect_to webapp_url(@webapp.id), notice: 'You\'re hack has been updated!'
    else
      render 'webapps/edit'
    end
  end

  
end