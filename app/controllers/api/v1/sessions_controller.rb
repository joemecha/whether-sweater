class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      # json stuff 
      # render
    else
      render status: :unauthorized
    end
  end
end