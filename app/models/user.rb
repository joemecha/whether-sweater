class User < ApplicationRecord::Base 
  has_secure_password 

  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
