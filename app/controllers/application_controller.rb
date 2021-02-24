class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  helper_method :current_user, :valid_auth_token?

  def current_user
    current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def valid_auth_token?
    return true if current_user&.auth_token

    token = request.headers['auth_token'] || request.headers['HTTP_AUTH_TOKEN']
    return true if User.find_by(auth_token: token)
  end
end
