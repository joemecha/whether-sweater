require 'rails_helper'

RSpec.describe "Route Service", :vcr do
  describe "Happy Path" do 
    it "fetches route info for an origin and destination" do
      origin = 'denver,co'
      destination = 'grand canyon village,az'
      results = RouteService.fetch_route_info(origin, destination)

      expect(results).to be_a(Hash)
      expect(results).to have_key(:route)
      expect(results[:route]).to have_key(:realTime)
    end 
  end
  describe "Sad Path" do 
    it "Impossible Route" do
      origin = 'denver,co'
      destination = 'okaya,japan'
      results = RouteService.fetch_route_info(origin, destination)

      expect(results).to be_a(Hash)
      expect(results).to have_key(:message)
      expect(results[:messages).to eq('We are unable to route with the given locations.')
    end 
  end
end