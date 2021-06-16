require 'rails_helper'

describe 'User login aka authentication api/v1/sessions' do
  before :each do
    User.destroy_all
    post '/api/v1/users', params: {email:"whatever@example.com", password: "password", password_confirmation: "password"} 
  end
  describe 'Happy Path' do
    it 'authenticates an existing user with valid credentials and returns response with api_key' do
      post '/api/v1/sessions', params: {email:"whatever@example.com", password: "password"}
      body = JSON.parse(response.body,symbolize_names: true)

      expect(response).to be_successful
      expect(body.class).to eq(Hash)
      expect(body[:data].class).to eq(Hash)
      expect(body[:data].keys).to eq( %i[id type attributes])
      expect(body[:data].keys.size).to eq(3)
      expect(body[:data][:attributes].class).to eq(Hash)
      expect(body[:data][:attributes].keys.size).to eq(2)
      expect(body[:data][:attributes].keys).to eq( %i[email api_key])
    end
  end

  describe 'Sad Path' do
    it 'Does not authenticate user if email and or password do not match' do
      post '/api/v1/sessions', params: {email:"nomatch@example.com", password: "password"}
      body = JSON.parse(response.body,symbolize_names: true)
      expect(response.status).to eq(400)
      expect(body.class).to eq(Hash)
      expect(body[:errors]).to eq("User not found")
    end

    it 'Does not create a new user if passwords do not match' do
      post '/api/v1/sessions', params: {email:"whatever@example.com", password: "pass"}
      body = JSON.parse(response.body,symbolize_names: true)
      expect(response.status).to eq(400)
      expect(body.class).to eq(Hash)
      expect(body[:errors]).to eq("Password incorrect")
    end
  end
end