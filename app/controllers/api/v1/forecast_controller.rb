class Api::V1::ForecastController < ApplicationController
  def index
    # if !params[:location].present?
    #   render json: { errors: 'Incorrect query params' }, status: :bad_request
    # else
      forecast = WeatherFacade.get_forecast_for_a_city(params[:location])
      render json: ForecastSerializer.new(forecast)
    # end
  end
end