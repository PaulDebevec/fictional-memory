class AddAssessmentToNotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :assessment, null: false, foreign_key: true
  end
end
