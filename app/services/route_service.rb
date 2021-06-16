class RouteService
  def self.fetch_route_info(origin, destination)
    response = conn.get("/directions/v2/route?from=#{origin}&to=#{destination}")
    json = parse_json(response)
    json[:route]
  end

  def self.conn
    Faraday.new('http://www.mapquestapi.com', params: { key: ENV['geocode_key'] })
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end