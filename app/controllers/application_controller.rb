#Push Test

class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
  	u = User.find(current_user).confirmed?
  	if !u
  		flash[:notice] = "you have not confirm yet!"
  		new_user_session_path
  	else
  		edit_user_registration_path
  	end
  end
end
