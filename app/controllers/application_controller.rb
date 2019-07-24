class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?
    # before_action :check_if_owner, only: [:edit, :update, :destroy] ,  if: :devise_controller?

    protected
  

    # def check_if_owner
    #       @user = User.find_by(username: params[:user_id])
    #       debug
    #       if current_user.id != @user.id
  
    #           redirect_to root_path
    #       end
    #   end

    def configure_permitted_parameters
        update_attr = [:password, :password_confirmation, :current_password, :email, :username ]
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username ,:first_name , :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: update_attr)

    end

end
