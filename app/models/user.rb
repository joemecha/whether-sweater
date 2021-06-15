class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, length: { minimum: 8 },
                    format: { with: URI::MailTo::EMAIL_REGEXP }
  # validates :email, presence: true, uniqueness: true, format: :with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
