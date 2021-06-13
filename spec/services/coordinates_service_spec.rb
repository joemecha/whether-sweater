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
  describe "Sad Path - bad location params" do 
    # A default location {:lat=>39.390897, :lng=>-99.066067} is returned
    # by the API. This is checked in the weather facade, e.g. location = "?😛"
  end
end