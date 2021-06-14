class Book
  attr_reader :id,
              :destination,
              :forecast,
              :total_books_found,
              :books

  def initialize(location, quantity, book_data, weather_data)
    @id = nil
    quantity = quantity.to_i
    @destination = location 
    @forecast = BookForecast.new(weather_data)
    @total_books_found = book_data[:numFound]
    @books = book_data[:docs][0..(quantity -1)].map do |book|
      OneBook.new(book)
    end
  end
end