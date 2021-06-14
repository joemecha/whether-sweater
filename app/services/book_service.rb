class BookService
  def self.fetch_books(location)
    response = conn.get("/search.json?q=#{location}")
    json = parse_json(response)
    json[:results]
  end

  def self.conn
    Faraday.new('http://openlibrary.org')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end