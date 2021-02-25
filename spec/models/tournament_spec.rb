require 'rails_helper'

RSpec.describe Tournament, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:city)}
    it {should validate_presence_of(:state)}
    it {should validate_presence_of(:start_date)}
  end

  describe 'relationships' do
    it {should have_many(:tournament_teams)}
    it {should have_many(:teams).through(:tournament_teams)}
  end
end
