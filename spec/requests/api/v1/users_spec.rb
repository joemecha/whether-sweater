require 'rails_helper'

describe 'New user registration' do
  describe 'Happy Path' do
    it 'Creates a user in the database and sends required response' do
      User.destroy_all
      post '/api/v1/users', params: {email:"whatever@example.com", password: "password", password_confirmation: "password"}
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
    it 'Does not create a new user if email blank' do
      post '/api/v1/users', params: {email:"", password: "password", password_confirmation: "password"}
      body = JSON.parse(response.body,symbolize_names: true)
      expect(response.status).to eq(400)
      expect(body.class).to eq(Hash)
      expect(body[:errors]).to eq("Email cannot be blank")
    end

    it 'Does not create a new user if passwords do not match' do
      post '/api/v1/users', params: {email:"whatever@example.com", password: "password", password_confirmation: "pass"}
      body = JSON.parse(response.body,symbolize_names: true)
      expect(response.status).to eq(400)
      expect(body.class).to eq(Hash)
      expect(body[:errors]).to eq("Passwords do not match")
    end
  end
end