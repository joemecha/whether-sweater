class RoadTripFacade
  def self.get_trip_route(origin, destination)
    if origin == "" || destination == ""
      return :error
    else
      route_info = RouteService.fetch_route_info(origin, destination)
      travel_time = readable_travel_time(route_info[:realTime])
      coord = CoordinatesService.fetch_lat_lon(destination)
      eta = (Time.now.to_i + route_info[:realTime])
      
      weather_at_eta = WeatherService.fetch_forecast_for_a_city(coord[:lat], coord[:lng])
      
      # One Call API gives hourly weather up to 48hours, if greater, give as number of days
      if route_info[:realTime] > 172800 #daily
        temperature = nil
        conditions = ""
        weather_at_eta[:daily].find do |day|
          if (eta + Time.now.to_i) >= day[:dt]
            temperature = day[:temp][:day]
            conditions = day[:weather][0][:description]
          end 
        end
      else #hourly
        weather_at_eta[:hourly].find do |hour|
          if (eta + Time.now.to_i) >= hour[:dt]
            temperature = hour[:temp]
            conditions = hour[:weather][0][:description]
          end
        end 
      end
      RoadTrip.new(route_info, travel_time, temperature, conditions)
    end
  end

  def self.readable_travel_time(sec)
    days = (sec/172800).to_i
    hours = ((sec/3600) %60).to_i 
    minutes = ((sec/ 60) %60).to_i
    if days > 0
      return "#{days} days, #{hours} hours and #{minutes} minutes"
    else
      return "#{hours} hours and #{minutes} minutes"
    end 
  end
end