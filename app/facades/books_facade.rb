class BooksFacade
  def self.get_books_for_a_city(location)
    json = BookService.fetch_books(location)
    Book.new(json)
  end

  # AND CURRENT WEATHER FOR LOCATION
end