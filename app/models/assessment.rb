class Assessment < ApplicationRecord
  validates_presence_of :rating, :assessment_type, :player_id, :user_id, :tournament_id

  belongs_to :user
  belongs_to :player
  belongs_to :tournament
end
