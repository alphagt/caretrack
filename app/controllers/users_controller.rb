class UsersController < ApplicationController


#GET users/home
def home
	if current_user.is_admin? then
		redirect_to user_admin_home_path(:id => current_user.id)
	end
	
	redirect_to users_home_path(:id => current_user.id)	
	
end

#GET users/admin_home
def admin_home
	
end

#GET users/home
def home

end

end
