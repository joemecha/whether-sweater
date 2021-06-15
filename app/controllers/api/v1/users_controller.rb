class Api::V1::UsersController < ApplicationController
  def create
    if params[:password] != params[:password_confirmation]
      render json: { errors: 'Passwords do not match' }, status: :bad_request
    # elsif ? email already registered
    # elsif ? missing a field
    else
      # what goes here
    end
  end
end