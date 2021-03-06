class CoordinatesService
  def self.fetch_lat_lon(location)
    response = conn.get('/geocoding/v1/address') do |f|
      f.params['location'] = location
    end
    json = parse_json(response)
    json[:results].first[:locations].first[:latLng]
  end

  def self.conn
    Faraday.new('http://www.mapquestapi.com', params: { key: ENV['geocode_key'] })
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
