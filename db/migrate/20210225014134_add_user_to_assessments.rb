class AddUserToAssessments < ActiveRecord::Migration[6.0]
  def change
    add_reference :assessments, :user, null: false, foreign_key: true
  end
end
