class Note < ApplicationRecord
  validates_presence_of :note

  belongs_to :assessment
  belongs_to :user
end
