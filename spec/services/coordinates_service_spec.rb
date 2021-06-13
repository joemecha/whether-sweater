require 'rails_helper'

RSpec.describe "Coordinates Service", :vcr do
  describe "Happy Path - fetch_coordinates for a location" do 
    it "returns lat and lon coordinates given a location" do
      location = 'boulder,co'
      results = CoordinatesService.fetch_lat_lon(location)

      expect(results).to be_a(Hash)
      expect(results).to have_key(:lat)
      expect(results).to have_key(:lng)
    end 
  end
  describe "Sad Path - bad location params", :vcr do 
    it "Returns 'no match' message if location not found" do 
      location = "?😛"
      results = CoordinatesService.fetch_lat_lon(location)
      expect(results).to be_a(String)
    end
  end
end