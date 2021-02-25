require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:full_name)}
    it {should validate_presence_of(:email)}
    it {should validate_presence_of(:password)}
  end

  describe 'relationships' do
    it {should belong_to(:team).optional}
    it {should have_many(:assessments)}
  end
end
