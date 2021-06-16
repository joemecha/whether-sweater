class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      render json: UsersSerializer.new(@user)
    elsif @user
      render json: { errors: 'Password incorrect' }, status: :bad_request
    else
      render json: { errors: 'User not found' }, status: :bad_request
    end
  end
end
