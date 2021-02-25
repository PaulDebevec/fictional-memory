class Assessment < ApplicationRecord
  validates_presence_of :rating, :assessment_type
end
