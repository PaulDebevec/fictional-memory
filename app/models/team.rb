class Team < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :age_group, require: false
  validates_presence_of :coach, require: false

  has_many :players
end
