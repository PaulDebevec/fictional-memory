require 'rails_helper'

describe TournamentTeam, type: :model do
  describe "validations" do
    it { should validate_presence_of :team_id }
    it { should validate_presence_of :tournament_id }
  end

  describe "relationships" do
    it {should belong_to :team}
    it {should belong_to :tournaments}
  end
end
