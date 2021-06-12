class Forecast
  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(data)
    @id = nil
    @current_weather = CurrentWeather.new(data)
    @daily_weather = DailyWeather.new(data)
    @hourly_weather = HourlyWeather.new(data)
  end
end