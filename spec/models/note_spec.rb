require 'rails_helper'

RSpec.describe Note, type: :model do
  describe 'validations' do
    it {should validate_presence_of(:note)}
  end
end
