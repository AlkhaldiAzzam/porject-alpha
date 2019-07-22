class ProfileController < ApplicationController
  def index
    @user = User.find_by(username: params[:user_id])
  end
  
  def edit
    @user = current_user
  end

  def update

    @user = current_user    
    @user.update_attributes(:first_name => params[:user][:first_name], :last_name => params[:user][:last_name])
    redirect_to "/profile/#{current_user.username}"
  end


end
