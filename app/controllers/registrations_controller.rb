class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(resource)
  	flash[:confirm] = "Please check your email for confirmation"
    new_user_session_path
  end
  protected

  def after_inactive_sign_up_path_for(resource)
  	flash[:confirm] = "Please check your email for confirmation"
    new_user_session_path
  end
end

