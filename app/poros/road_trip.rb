class RoadTrip
  attr_reader :id,
              :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta

  def initialize(route_info, travel_time, temp, cond)
    @id = nil
    @start_city = "#{route_info[:locations].first[:adminArea5]}, #{route_info[:locations].first[:adminArea3]}"
    @end_city = "#{route_info[:locations].last[:adminArea5]}, #{route_info[:locations].last[:adminArea3]}"
    @travel_time = travel_time
    @weather_at_eta = { temperature: temp, conditions: cond }
  end
end
