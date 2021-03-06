class Api::V1::RoadTripController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    if params[:origin] == '' || !params[:origin].ascii_only? || params[:destination] == '' || !params[:destination].ascii_only?
      render json: { errors: 'Missing or incorrect origin and or location' }, status: :bad_request
    elsif params[:api_key].blank?
      render json: { errors: 'Missing or incorrect key' }, status: :bad_request
    else
      road_trip = RoadTripFacade.get_trip_route(params[:origin], params[:destination])
      if road_trip.class != RoadTrip # Non-drivable route handling
        render json: { errors: 'Impossible route'}, status: :bad_request
      else
        render json: RoadTripSerializer.new(road_trip)
      end
    end
  end
end
