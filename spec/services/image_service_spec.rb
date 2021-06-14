require 'rails_helper'

RSpec.describe "Image Service" do
  describe "fetch background image for the city" do 
    it "returns image data given a location", :vcr do
      location = 'denver,co'
      results = ImageService.fetch_background_image(location)
      expect(results).to be_a(Hash)
    end 
  end
end