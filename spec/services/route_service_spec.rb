require 'rails_helper'

RSpec.describe "Route Service", :vcr do
  describe "Happy Path" do 
    it "fetches route info for an origin and destination" do
      origin = 'denver,co'
      destination = 'grand canyon village,az'
      results = RouteService.fetch_route_info(origin, destination)
      expect(results).to be_a(Hash)
      expect(results).to have_key(:distance)
      expect(results).to have_key(:realTime)
    end 
  end
  describe "Sad Path" do 
    it "is an Impossible Route", :vcr do
      origin = 'denver,co'
      destination = 'hilo,hi'
      results = RouteService.fetch_route_info(origin, destination)
      expect(results).to be_a(Hash)
      expect(results).to have_key(:routeError)
      expect(results[:routeError][:errorCode]).to eq(2)
    end 
  end
end