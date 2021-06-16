class Api::V1::RoadTripController < ApplicationController
  # HOW BEST TO VALIDATE API_KEY ?

  def index
    if params[:origin] == '' || !params[:origin].ascii_only? || params[:destination] == '' || !params[:destination].ascii_only?
      render json: { errors: 'Missing or incorrect query params' }, status: :bad_request
    elsif params[:api_key].blank?
      render json: { errors: 'Missing or incorrect key' }, status: :bad_request
    else
      road_trip = RoadTripFacade.get_trip_route(params[:origin], params[:destination])
      render json: RoadTripSerializer.new(road_trip)
    end
  end
end
