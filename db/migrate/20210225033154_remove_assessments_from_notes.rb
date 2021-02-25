class RemoveAssessmentsFromNotes < ActiveRecord::Migration[6.0]
  def change
    remove_column :notes, :assessments_id
  end
end
