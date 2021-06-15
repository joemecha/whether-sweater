class BookService
  def self.fetch_books(location)
    response = conn.get("/search.json?q=#{location}")
    parse_json(response)
  end

  def self.conn
    Faraday.new('http://openlibrary.org')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
