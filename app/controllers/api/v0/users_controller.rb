class Api::V0::UsersController < ApplicationController
  def create
    user = User.create(user_params)
    user.save
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
