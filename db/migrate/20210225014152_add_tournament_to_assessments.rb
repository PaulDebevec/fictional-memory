class AddTournamentToAssessments < ActiveRecord::Migration[6.0]
  def change
    add_reference :assessments, :tournament, null: false, foreign_key: true
  end
end
