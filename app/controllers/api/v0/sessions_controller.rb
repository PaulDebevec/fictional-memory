class Api::V0::SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    request_body = JSON.parse(request.body.read)
    user = User.find_by(email: request_body['email'])
    if user.authenticate(request_body['password'])
      user.generate_api_token
      message = "user authenticated"
      render json: {'auth_token' => user.auth_token, 'message' => message}, status: 200
    else
      message = "Invalid user credentials"
      render json: {'data': { 'message': message}}, status: 401
    end
  end
end
