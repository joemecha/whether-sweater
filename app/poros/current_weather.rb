class CurrentWeather
  attr_reader :datetime,
              :sunrise,
              :sunset,
              :temperature,
              :feels_like,
              :humidity,
              :uvi,
              :visibility,
              :conditions,
              :icon

  def initialize(data)
    @datetime = readable_time(data[:dt])
    @sunrise = readable_time(data[:sunrise])
    @sunset = readable_time(data[:sunset])
    @temperature = data[:temp]
    @feels_like = data[:feels_like]
    @humidity = data[:humidity]
    @uvi = data[:uvi]
    @visibility = data[:visibility]
    @conditions = data[:weather].first[:description]
    @icon = data[:weather].first[:icon]
  end

  def readable_time(unix_input)
    Time.at(unix_input).strftime("%Y-%m-%e %H:%M:%S %z")
  end
end