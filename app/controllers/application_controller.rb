class ApplicationController < ActionController::Base
  # before_action :authenticate_admin!
  before_action :authenticate_user!
  # before_action :redirect_sign_out_user
  before_action :redirect_sign_in_user
  
  private

  def redirect_signed_in_admin
    redirect_to authenticated_root_path if admin_signed_in?
  end

  def redirect_sign_in_user
    redirect_to rooms_path if user_signed_in?
  end
  helper_method :current_user

  def current_user
    # If session[:user_id] is nil, set it to nil, otherwise find the user by id.
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
  end
end
