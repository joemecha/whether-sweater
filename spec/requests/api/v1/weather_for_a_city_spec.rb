require 'rails_helper'

describe 'Retrieve a forecast for a city' do
  describe 'Happy Path' do
    it 'Sends required forecast' do
      get '/api/v1/forecast', params: {city: 'Boulder', state: 'CO', latlong: '-105.3505,40.0833'}
      forecast = JSON.parse(response.body,symbolize_names: true)
      expect(response).to be_successful
      expect(forecast).to be_a Hash
    end
  end
end