class Player < ApplicationRecord
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :height
  validates_presence_of :weight
  validates_presence_of :birthday
  validates_presence_of :graduation_year
  validates_presence_of :position
end
