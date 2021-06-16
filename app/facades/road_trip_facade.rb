class RoadTripFacade
  def self.get_trip_route(origin, destination)
    if origin == "" || destination == ""
      return :error
    else
      route_info = RouteService.fetch_route_info(origin, destination)
      
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
          require 'pry'; binding.pry
        end 
      end
      RoadTrip.new(route_info, temperature, conditions)
    end
  end
end