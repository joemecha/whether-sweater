class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :current_weather, :daily_weather, :hourly_weather
end
