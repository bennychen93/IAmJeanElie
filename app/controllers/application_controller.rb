#Push Test

class ApplicationController < ActionController::Base
  protect_from_forgery
  def after_sign_in_path_for(resource)
  	u = params[:user].confirmed?
  	if u
  		flash[:confirm] = "you have not confirm yet!"
  		new_user_session_path
  	else
  		edit_user_registration_path
  	end
  end
end
