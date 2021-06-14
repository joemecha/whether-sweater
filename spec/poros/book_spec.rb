require 'rails_helper'

RSpec.describe Book do
  describe 'it returns all required book and current weather data for provided location' do
    it 'contains destination, forecast, total_books_found, and books' do
      book_data = ""
      weather_data = ""

      book_info = Book.new(book_data, current_weather_data)
      expect(book_info.id).to eq(nil)
      expect(book_info.destination.class).to eq(String)
      expect(book_info.forecast.class).to eq(BookForecast)
      expect(book_info.total_books_found.class).to eq(Integer)
      expect(book_info.books.class).to eq(Array)
    end
  end 
end 