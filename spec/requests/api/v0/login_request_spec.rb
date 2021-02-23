require 'rails_helper'

RSpec.describe 'User Login Endpoint Request' do
  it 'A successful response returns an auth_token with a 200 status' do
    user = User.create( email: 'sample.coach@mobile.edu',
                        password: 'samplepassword')

    post '/api/v0/login', params: { email: user.email,
                                  password: user.password}

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

    post '/api/v0/login', params: { email: user_2.email,
                                    password: 'incorrectPassword'}

    expect(response).not_to be_successful
    expect(response.status).to eq(401)
    json = JSON.parse(response.body, symbolize_names: true)
    expect(json[:data]).to eq("Invalid user credentials")
  end
end
