class Api::V0::SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      user.generate_api_token
      message = "user authenticated"
      render json: {'auth_token' => user.auth_token, 'message' => message}, status: 200
    else
      message = "Invalid user credentials"
      render json: {'data' => message}, status: 401
    end
  end
end
