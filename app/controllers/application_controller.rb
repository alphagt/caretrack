class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  
  def require_admin
    unless current_user.admin
      #flash[:error] = "You must be an admin in to access that section" 
      redirect_to user_home_path(:id => current_user.id) # Prevents the current action from running
    end
  end
  
end
