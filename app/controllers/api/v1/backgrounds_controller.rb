class Api::V1::BackgroundsController < ApplicationController
  def index
    if params[:location] == '' || params[:location] == !(params[:location]).ascii_only?
      render json: { errors: 'Missing query params' }, status: :bad_request
    else
      background = BackgroundsFacade.get_background_image_for_a_city(params[:location])
      render json: BackgroundSerializer.new(background)
    end
  end
end