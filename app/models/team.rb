class Team < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :age_group, require: false

  has_many :players
  has_many :users
  has_many :tournament_teams
  has_many :tournaments, through: :tournament_teams
end
