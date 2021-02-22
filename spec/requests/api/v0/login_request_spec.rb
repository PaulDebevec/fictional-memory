require 'rails_helper'

RSpec.describe 'User Login Endpoint Request' do
  it 'A successful response returns an api_token with a 200 status' do
    user = User.create( email: 'sample.coach@mobile.edu',
                        password: 'samplepassword')

    post '/api/v0/login', body: { email: user.email,
                                  password: user.password}


    expect(response).to be_successful
  end
end
