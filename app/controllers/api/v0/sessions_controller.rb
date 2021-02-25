class Api::V0::SessionsController < ApplicationController
  def create
    # Parse the body and make it readable JSON
    request_body = JSON.parse(request.body.read)
    user = User.find_by(email: request_body['email'])
    if user.authenticate(request_body['password'])
      # Generates auth token for user when they log in for the first time
      user.generate_auth_token if user.auth_token == nil
      session[:user_id] = user.id
      message = "user authenticated"
      render json: {'auth_token' => user.auth_token, 'message' => message}, status: 200
    else
      message = "Invalid user credentials"
      render json: {'data': { 'message': message}}, status: 401
    end
  end
end
