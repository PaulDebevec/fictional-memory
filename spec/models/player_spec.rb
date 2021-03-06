require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:first_name)}
    it {should validate_presence_of(:last_name)}
    it {should validate_presence_of(:height)}
    it {should validate_presence_of(:weight)}
    it {should validate_presence_of(:birthday)}
    it {should validate_presence_of(:graduation_year)}
    it {should validate_presence_of(:position)}
  end

  describe 'relationships' do
    it {should belong_to(:team).optional}
    it {should have_many(:assessments)}
  end
end
