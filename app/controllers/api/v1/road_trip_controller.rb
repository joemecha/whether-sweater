class Api::V1::RoadTripController < ApplicationController
  
  # NEED TO VALIDATE API_KEY

  def index
    if params[:origin] == '' || !params[:origin].ascii_only? || params[:destination] == '' || !params[:destination].ascii_only?
      render json: { errors: 'Missing or incorrect query params' }, status: :bad_request
    else
      road_trip = RoadTripFacade.get_road_trip_details(params[:origin], params[:destination])
      render json: RoadTripSerializer.new(road_trip)
    end
  end
end