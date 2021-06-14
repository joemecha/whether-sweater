class WeatherService
  def self.fetch_forecast_for_a_city(lat, lon)
    key = ENV['weather_api_key']
    response = conn.get("/data/2.5/onecall?lat=#{lat}&lon=#{lon}&exclude=minutely,alerts&units=imperial&appid=#{key}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new('http://api.openweathermap.org', params: { key: ENV['weather_api_key'] })
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
