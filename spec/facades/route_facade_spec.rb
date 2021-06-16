require 'rails_helper'

RSpec.describe 'RoadTripFacade' do 
  describe "Happy path - data returned as expected" do
    it 'returns response to front end', :vcr do 
      origin = 'denver,co'
      destination = 'grand canyon village,az'
      response = RouteFacade.get_trip_route(origin, destination)
      expect(response).to be_a(RoadTrip)
    end
  end 
  # Sad paths tested in REQUEST, handled in Controller
end