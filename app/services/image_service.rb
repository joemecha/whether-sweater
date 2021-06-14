class ImageService
  def self.fetch_background_image(location)
    response = conn.get("/search/photos?page=1&per_page=1&orientation=landscape&query=#{location}&client_id=#{}") do |f|
      f.params['location'] = location
    end
    json = parse_json(response)
    json[:results].first[:locations].first[:latLng]
  end

  def self.conn
    Faraday.new('https://api.unsplash.com', params: { key: ENV['access_key'] })
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end