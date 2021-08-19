require 'rails_helper'

describe 'Book Search Request - /api/v1/book-search' do
  describe 'Happy Path' do
    it 'Sends all required destination, forecast, and books data with correct params', :vcr do
      get '/api/v1/book-search', params: {location:"denver,co", quantity:"7"}
      book_list = JSON.parse(response.body,symbolize_names: true)
      expect(response).to be_successful
      expect(book_list).to be_a Hash
    end
  end

  describe 'Sad Path' do
    it 'Sends an error message when location not found', :vcr do
      get '/api/v1/book-search', params: {location:"", quantity:"7"}
      weather_report = JSON.parse(response.body,symbolize_names: true)

      expect(response.status).to eq(400)
      expect(weather_report).to be_a Hash
      expect(weather_report).to have_key(:errors)
      expect(weather_report[:errors]).to eq("Missing or incorrect location")
    end
    it 'Sends an error message when quantity is less than one', :vcr do
      get '/api/v1/book-search', params: {location:"denver,co", quantity:"0"}
      weather_report = JSON.parse(response.body,symbolize_names: true)

      expect(response.status).to eq(400)
      expect(weather_report).to be_a Hash
      expect(weather_report).to have_key(:errors)
      expect(weather_report[:errors]).to eq("Missing or incorrect location")
    end

    # Add test for params[:quantity] NOT an integer
  end
end