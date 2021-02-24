class Api::V0::PlayersController < ApplicationController
  def index
    user_in_session = User.find_by(id: session[:user_id])
    if user_in_session.nil? && valid_auth_token?
      coach = User.find_by(auth_token: request.headers['auth_token'])
      players = coach.team.players
      render json: PlayersSerializer.new(players)
    elsif user_in_session != nil
      players = user_in_session.team.players
      render json: PlayersSerializer.new(players) if valid_auth_token?
    else
      message = "You do not have access to view this page"
      render json: {'data': { 'message': message}}, status: 401
    end
  end
end
