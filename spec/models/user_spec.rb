require 'rails_helper'

RSpec.describe User do
  describe 'validations' do
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
  end

  describe 'User attributes' do
    it 'has id, email and api key' do 
      @user = User.create(id: 9, email: 'nothing@example.com', password: 'password', password_confirmation: 'password')
      @user.api_key = SecureRandom.hex

      expect(@user.email).to eq('nothing@example.com')
      expect(@user.id).to eq(9)
      expect(@user.api_key.present?).to eq(true)
      expect(@user.api_key.present?).to eq(true)
    end 
  end
end
