class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.float :rating
      t.string :assessment_type, default: 'event'
    end
  end
end
