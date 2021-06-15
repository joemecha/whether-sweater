require 'rails_helper'

RSpec.describe "Book Service" do
  describe "fetch book results for the city" do 
    it "returns book data for a location", :vcr do
      location = 'denver,co'
      results = BookService.fetch_books(location)
      expect(results).to be_a(Hash)
    end 
  end
end