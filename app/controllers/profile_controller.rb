class ProfileController < ApplicationController


  before_action :check_if_owner, only: [:edit, :update, :destroy] 


  def index
    @user = User.find_by(username: params[:user_id])
  end
  
  def edit
    @user = current_user
  end

  def update

    @user = current_user    
    @user.update_attributes(:first_name => params[:user][:first_name], :last_name => params[:user][:last_name], :bio => params[:user][:bio], :img => params[:user][:img])
    redirect_to "/profile/#{current_user.username}"
  end

  def follow
    follower = User.find_by(username: params[:username])
    followee = current_user

    follower.followers.push(followee.id)
    followee.followees.push(follower.id)

    follower.save
    followee.save
    redirect_to request.referer
  end

  def unfollow
    follower = User.find_by(username: params[:username])
    followee = current_user

    follower.followers.delete(followee.id)
    followee.followees.delete(follower.id)

    follower.save
    followee.save
    redirect_to request.referer
  end






  protected

  def check_if_owner
        @user = User.find_by(username: params[:user_id])
        
        if current_user.id != @user.id

            redirect_to root_path
        end
    end
end
