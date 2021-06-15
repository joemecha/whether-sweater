require 'rails_helper'

RSpec.describe 'BackgroundsFacade' do 
  describe "Happy path - data returned as expected" do
    it 'returns image url and image details', :vcr do 
      location = "denver,co"
      response = BackgroundsFacade.get_background_image_for_a_city(location)
      expect(response).to be_a(Image)
    end
  end 
  # Sad path handled at controller level. Test moved to Request Spec.
end