class Tournament < ApplicationRecord
  validates_presence_of :name, :city, :state, :start_date

  has_many :tournament_teams
  has_many :teams, through: :tournament_teams
end
