class AddPlayerToAssessments < ActiveRecord::Migration[6.0]
  def change
    add_reference :assessments, :player, null: false, foreign_key: true
  end
end
