class CreateTournamentTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :tournament_teams do |t|
      t.references :team
      t.references :tournament
    end
  end
end
