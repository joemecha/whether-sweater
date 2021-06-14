require 'rails_helper'

RSpec.describe 'BackgroundsFacade', :vcr do 
  describe "Happy path - data returned as expected" do
    it 'returns image url and image details', :vcr do 
      location = "denver,co"
      response = BackgroundsFacade.get_background_image_for_a_city(location)
      expect(response).to be_a(ImageInfo)
    end
  end 
  describe "Sad path" do
    describe "Bad location query params" do
      it 'returns error message', :vcr do 
        location = "?😛"
        response = BackgroundsFacade.get_background_image_for_a_city(location)
        expect(response).to eq(:error)
      end
    end 
  end 
end