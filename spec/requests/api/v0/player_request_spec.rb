require 'rails_helper'

RSpec.describe 'User Login Endpoint Request' do
  it 'A successful response returns an auth_token with a 200 status' do
    # Setup
    # Create a user with random name, random email, and password of 'password'
    coach_and_team_1 = FactoryBot.create(:user , team_id: FactoryBot.create(:team).id)
    coach_and_team_1.team.update(coach: coach_and_team_1.full_name)
    # Update user email to 'samplecoach@example.com'
    coach_and_team_1.update(email: 'samplecoach@example.com')
    coach_and_team_1.update(auth_token: 'NHa/tjwQOJxDTUzG1XTSYvgr0ru9iqCcXsG3Ovwl8OjcVOE8B67zMHrhcn+z34Lf1HXIb1WeDOoFyGn8+58Q26ookmMaJTHVG9a19sfeEPoabKShCFSJToBMcmKAjI4sXteWnsEedjzEj7sIAMefmk0T9u3/qoEiMmeC/D+l+FolynvopKcgsLLtHzexGK9Gfggfzyh2gzF81AbqXQMSYuoorrvZFpHDuMC3ZnN9dS9y0VCBg6FBdbSDRIVmVMDoBhXMdpk7FjtSswMwO39+rgcBfHKs8Ve0PqQN2DVgJRg5c8UybdXgye7wUcXu01jRlX1AJvuzIJ5dhCZC7weLFFEmDk6cieSmRCcJg8oLdLxD9DChTC28UqrB2ybA82j+4K2DFh1I1nojpu8Ue5Dyh9WvpR1ClhqMnMtH4nXJqEwb0tOIaLz2qNqbRgE0aHlO1lCfueF3d1Hg2LLi4SjktAIzsPF0QZgjVYNjXAjdTQe/X/GPEAyl/OLoXMlQ/OjUuqstPwVp9T6cZ8IhaEPrtQ')

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
    payload_2 = { auth_token: coach_and_team_1.auth_token, message: 'user authorized' }.to_json

    get '/api/v0/players', params: payload_2

    expect(response).to be_successful
    expect(response.status).to eq(200)
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:data][0].keys.include?(:id)).to eq(true)
    expect(json[:data][0].keys.include?(:type)).to eq(true)
    expect(json[:data][0].keys.include?(:attributes)).to eq(true)
    expect(json[:data][0][:type]).to eq('players')
    expect(json[:data][0][:attributes].keys.include?(:first_name)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:last_name)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:height)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:weight)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:birthday)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:graduation_year)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:position)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:recruit)).to eq(true)
    expect(json[:data][0][:attributes].length).to eq(8)
    expect(json[:data].length).to eq(5)
  end

  it 'API sends responds to an auth_token being sent through the headers of the request' do
    # Create a user with random name, random email, and password of 'password'
    coach_and_team_1 = FactoryBot.create(:user , team_id: FactoryBot.create(:team).id)
    coach_and_team_1.team.update(coach: coach_and_team_1.full_name)
    # Update user email to 'samplecoach@example.com'
    coach_and_team_1.update(auth_token: 'NHa/tjwQOJxDTUzG1XTSYvgr0ru9iqCcXsG3Ovwl8OjcVOE8B67zMHrhcn+z34Lf1HXIb1WeDOoFyGn8+58Q26ookmMaJTHVG9a19sfeEPoabKShCFSJToBM')
    team_1 = coach_and_team_1.team
    team_1_players = FactoryBot.create_list(:player, 5)
    team_1.players << team_1_players

    message = 'user authorized'
    # Begin test for '/players' endpoint
    payload_2 = { auth_token: coach_and_team_1.auth_token, message: message }

    get '/api/v0/players', headers: payload_2

    expect(response).to be_successful
    expect(response.status).to eq(200)
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:data][0].keys.include?(:id)).to eq(true)
    expect(json[:data][0].keys.include?(:type)).to eq(true)
    expect(json[:data][0].keys.include?(:attributes)).to eq(true)
    expect(json[:data][0][:type]).to eq('players')
    expect(json[:data][0][:attributes].keys.include?(:first_name)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:last_name)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:height)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:weight)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:birthday)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:graduation_year)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:position)).to eq(true)
    expect(json[:data][0][:attributes].keys.include?(:recruit)).to eq(true)
    expect(json[:data][0][:attributes].length).to eq(8)
    expect(json[:data].length).to eq(5)
  end
end
