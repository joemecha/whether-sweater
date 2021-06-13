class HourlyWeather
  attr_reader :time,
              :temperature,
              :conditions,
              :icon

  def initialize(data)
    @time = hourly_time(data[:dt])
    @temperature = data[:temp]
    @conditions = data[:weather].first[:description]
    @icon = data[:weather].first[:icon]
  end

  def hourly_time(unix_input)
    Time.at(unix_input).strftime("%H:%M:%S")
  end
end