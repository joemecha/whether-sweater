class Api::V1::ForecastController < ApplicationController
  def index
    if params(:location).nil? # || add regex to check <word>,2-letters || add if extra params
      render json: { errors: 'Incorrect query params' }, status: :bad_request # check project specs for error reqs if any
    else
      forecast = WeatherFacade.get_forecast_for_a_city(params[:location])
      render json: ForecastSerializer.new(forecast)
    end
  end
end