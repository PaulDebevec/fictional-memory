require 'rails_helper'

RSpec.describe 'User Login Endpoint Request' do
  it 'A successful response returns an auth_token with a 200 status' do

    # Create a user with random name, random email, and password of 'password'
    coach_and_team_1 = FactoryBot.create(:user , team_id: FactoryBot.create(:team).id)
    coach_and_team_1.team.update(coach: coach_and_team_1.full_name)
    # Update user email to 'samplecoach@example.com'
    coach_and_team_1.update(email: 'samplecoach@example.com')
    team_1 = coach_and_team_1.team

    coach_and_team_2 = FactoryBot.create(:user, team_id: FactoryBot.create(:team).id)
    coach_and_team_2.team.update(coach: coach_and_team_2.full_name)
    team_2 = coach_and_team_2.team

    team_1_players = FactoryBot.create_list(:player, 5)
    team_1.players << team_1_players

    team_2_players = FactoryBot.create_list(:player, 5)
    team_2.players << team_2_players

    payload = { email: 'samplecoach@example.com', password: 'password'}.to_json
    post '/api/v0/login', params: payload

    # Begin test for '/players' endpoint
    get '/api/v0/players'
    expect(response).to be_successful
    expect(response.status).to eq(200)
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
