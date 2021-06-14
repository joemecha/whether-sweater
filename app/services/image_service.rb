class ImageService
  def self.fetch_background_image(location)
    key = ENV['access_key']
    response = conn.get("/search/photos?per_page=1&orientation=landscape&query=#{location}&client_id=#{key}") do |f|
      f.params['location'] = location
    end
    json = parse_json(response)
    json[:results].first
  end

  def self.conn
    Faraday.new('https://api.unsplash.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end