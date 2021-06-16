class RoadTripFacade
  def self.get_trip_route(origin, destination)
    if origin == "" || destination == ""
      return :error
    else
      route_info = RouteService.fetch_route_info(origin, destination)
      coord = CoordinatesService.fetch_lat_lon(destination)
      eta = (Time.now.to_i + route_info[:realTime])
      # One Call API gives hourly weather up to 48hours, if greater, give as number of days
      if eta > 172800
        weather_at_eta = WeatherService.fetch_forecast_at_destination_eta(coord[:lat], coord[:lng], eta)
      end
      weather_at_eta = WeatherService.fetch_forecast_at_destination_eta(coord[:lat], coord[:lng], eta)
      RoadTrip.new(route_info, weather_at_eta)
    end
  end
end