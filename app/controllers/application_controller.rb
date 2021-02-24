class ApplicationController < ActionController::Base
  helper_method :current_user, :valid_auth_token?

  def current_user
    current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def valid_auth_token?
    return true if current_user.auth_token != nil
  end
end
