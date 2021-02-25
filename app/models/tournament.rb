class Tournament < ApplicationRecord
  validates_presence_of :name, :city, :state, :start_date
end
