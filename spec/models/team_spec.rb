require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age_group)}
  end

  describe 'relationships' do
    it {should have_many(:players)}
    it {should have_many(:users)}
    it {should have_many(:tournament_teams)}
    it {should have_many(:tournaments).through(:tournament_teams)}
  end
end
