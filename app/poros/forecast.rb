class Forecast
  attr_reader :id,
              :current_weather,
              :daily_weather,
              :hourly_weather

  def initialize(data)
    @id = nil
    @current_weather = CurrentWeather.new(data[:current])
    @daily_weather = data[:daily][0..4].map do |day|
      DailyWeather.new(day)
    end
    @hourly_weather = data[:hourly][0..7].map do |hour|
      HourlyWeather.new(hour)
    end
  end
end
