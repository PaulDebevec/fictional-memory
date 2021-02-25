require 'rails_helper'

RSpec.describe Assessment, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:rating)}
    it {should validate_presence_of(:assessment_type)}
  end
end
