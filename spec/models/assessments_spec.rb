require 'rails_helper'

RSpec.describe Assessment, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:rating)}
    it {should validate_presence_of(:assessment_type)}
    it {should validate_presence_of(:user_id)}
    it {should validate_presence_of(:tournament_id)}
    it {should validate_presence_of(:player_id)}
  end

  describe 'relationships' do
    it {should belong_to(:user)}
    it {should belong_to(:tournament)}
    it {should belong_to(:player)}
  end
end
