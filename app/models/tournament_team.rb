class TournamentTeam < ApplicationRecord
  validates_presence_of :team_id, :tournament_id
  belongs_to :team
  belongs_to :tournament
end
