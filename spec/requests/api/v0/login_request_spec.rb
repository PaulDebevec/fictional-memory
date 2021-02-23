require 'rails_helper'

RSpec.describe 'User Login Endpoint Request' do
  it 'A successful response returns an auth_token with a 200 status' do
    user = User.create( email: 'sample.coach@mobile.edu',
                        password: 'samplepassword')

    payload = { email: user.email, password: user.password}.to_json
    post '/api/v0/login', params: payload

    expect(response).to be_successful
    expect(response.status).to eq(200)
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:message]).to eq("user authenticated")
    expect(json[:auth_token]).not_to eq(nil)
    expect(json.keys.include?(:auth_token)).to eq(true)
    expect(json.keys.include?(:message)).to eq(true)
  end

  it 'Incorrect login credentials return 401 error message' do
    user_2 = User.create( email: 'sample.coach_2@mobile.edu',
                        password: 'password')

    payload = { email: user_2.email, password: 'invalidpassword'}.to_json
    post '/api/v0/login', params: payload

    expect(response).not_to be_successful
    expect(response.status).to eq(401)
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json.keys.include?(:data)).to eq(true)
    expect(json[:data].keys.include?(:message)).to eq(true)
    expect(json[:data][:message]).to eq("Invalid user credentials")
  end
end
