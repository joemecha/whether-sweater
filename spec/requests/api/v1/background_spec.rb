require 'rails_helper'

describe 'Background Image Request - /api/v1/backrounds' do
  describe 'Happy Path' do
    it 'Sends required image url and photographer credits', :vcr do
      get '/api/v1/backgrounds', params: {location:"denver,co"}
      image_info = JSON.parse(response.body,symbolize_names: true)
      expect(response).to be_successful
      expect(image_info).to be_a Hash
    end
  end
  
  describe 'Sad Path' do
    it 'Sends an error message when location not found', :vcr do
      get '/api/v1/backgrounds', params: {location:"?😛"}
      image_info = JSON.parse(response.body,symbolize_names: true)
      
      expect(response.status).to eq(400)
      expect(image_info).to be_a Hash
      expect(image_info).to have_key(:errors)
      expect(image_info[:errors]).to eq("Missing or incorrect query params")
    end
    it 'Sends an error message when location not found', :vcr do
      get '/api/v1/backgrounds', params: {location:""}
      image_info = JSON.parse(response.body,symbolize_names: true)

      expect(response.status).to eq(400)
      expect(image_info).to be_a Hash
      expect(image_info).to have_key(:errors)
      expect(image_info[:errors]).to eq("Missing or incorrect query params")
    end
  end
end