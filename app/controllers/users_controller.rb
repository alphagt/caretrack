class UsersController < ApplicationController
before_filter :authenticate_user!

#GET users/home
def home
	if current_user.is_admin? then
		redirect_to admin_home_user_path(:id => current_user.id)
	end
	
	
end

#GET users/admin_home
def admin_home
	@Clients = Client.all
end


end
