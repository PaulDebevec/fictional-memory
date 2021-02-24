class Api::V0::PlayersController < ApplicationController
  def index
    players = current_user.team.players
    render json: PlayersSerializer.new(players) if valid_auth_token?
  end
end
