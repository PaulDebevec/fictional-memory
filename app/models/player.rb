class Player < ApplicationRecord
  validates_presence_of :first_name, :last_name, :height, :weight, :birthday,
                        :graduation_year, :position

  belongs_to :team, optional: true
  has_many :assessments
end
