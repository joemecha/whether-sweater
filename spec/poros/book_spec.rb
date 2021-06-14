require 'rails_helper'

RSpec.describe Book do
  describe 'it returns all required book and current weather data for provided location' do
    it 'contains destination, forecast, total_books_found, and books' do
      book_data = ""
      weather_data = ""

      book_info = Book.new(book_data, current_weather_data)
      expect(book_info.id).to eq(nil)
      expect(book_info.destination.class).to eq(String)
      expect(book_info.forecast.class).to eq()
      expect(book_info.daily_weather.count).to eq(5)
      expect(book_info.hourly_weather.class).to eq(Array)
      expect(book_info.hourly_weather.count).to eq(8)
    end
  end 
end 