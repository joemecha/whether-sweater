class Api::V1::ForecastController < ApplicationController
  def city_forecast
    forcast = WeatherFacade.get_forecast_for_a_city(params[:])
      if forecast.nil? || (forecast.is_a? Hash)
        render json: { errors: 'Incorrect query params' }, status: :bad_request # check project specs for error reqs if any
      else
        render json: ForecastSerializer.new(forcast)
      end
  end
end