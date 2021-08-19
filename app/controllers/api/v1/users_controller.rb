require 'securerandom'
class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def create
    if params[:email].blank?
      render json: { errors: 'Email cannot be blank' }, status: :bad_request
    elsif params[:password] != params[:password_confirmation]
      render json: { errors: 'Passwords do not match' }, status: :bad_request
    else
      user = User.create(user_params)
      user.update(api_key: SecureRandom.hex)
      render json: UsersSerializer.new(user)
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation)
  end
end
