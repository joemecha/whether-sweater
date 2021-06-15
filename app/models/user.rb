class User < ApplicationRecord
  validates :email, presence: true
                    uniqueness: true
            :password, presence: true 
            :password_confirmation, presence: true 

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
