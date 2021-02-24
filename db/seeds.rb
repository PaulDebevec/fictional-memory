User.destroy_all
Player.destroy_all
Team.destroy_all


coach_and_team_1 = FactoryBot.create(:user, team_id: FactoryBot.create(:team).id)
coach_and_team_1.team.update(coach: coach_and_team_1.full_name)
team_1 = coach_and_team_1.team

coach_and_team_2 = FactoryBot.create(:user, team_id: FactoryBot.create(:team).id)
coach_and_team_2.team.update(coach: coach_and_team_2.full_name)
team_2 = coach_and_team_2.team

coach_and_team_3 = FactoryBot.create(:user, team_id: FactoryBot.create(:team).id)
coach_and_team_3.team.update(coach: coach_and_team_3.full_name)
team_3 = coach_and_team_3.team

coach_and_team_4 = FactoryBot.create(:user, team_id: FactoryBot.create(:team).id)
coach_and_team_4.team.update(coach: coach_and_team_4.full_name)
team_4 = coach_and_team_4.team

coach_and_team_5 = FactoryBot.create(:user, team_id: FactoryBot.create(:team).id)
coach_and_team_5.team.update(coach: coach_and_team_5.full_name)
team_5 = coach_and_team_5.team

coach_and_team_6 = FactoryBot.create(:user, team_id: FactoryBot.create(:team).id)
coach_and_team_6.team.update(coach: coach_and_team_6.full_name)
team_6 = coach_and_team_6.team

team_1_players = FactoryBot.create_list(:player, 5)
team_1.players << team_1_players

team_2_players = FactoryBot.create_list(:player, 5)
team_2.players << team_2_players

team_3_players = FactoryBot.create_list(:player, 5)
team_3.players << team_3_players

team_4_players = FactoryBot.create_list(:player, 5)
team_4.players << team_4_players

team_5_players = FactoryBot.create_list(:player, 5)
team_5.players << team_5_players

team_6_players = FactoryBot.create_list(:player, 5)
team_6.players << team_6_players
