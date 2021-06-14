class DailyWeather
  attr_reader :date,
              :sunrise,
              :sunset,
              :max_temp,
              :min_temp,
              :conditions,
              :icon

  def initialize(data)
    @date = readable_time(data[:dt])
    @sunrise = readable_time(data[:sunrise])
    @sunset = readable_time(data[:sunset])
    @max_temp = data[:temp][:max]
    @min_temp = data[:temp][:min]
    @conditions = data[:weather].first[:description]
    @icon = data[:weather].first[:icon]
  end

  def readable_time(unix_input)
    Time.zone.at(unix_input).strftime('%Y-%m-%e %H:%M:%S %z')
  end
end
