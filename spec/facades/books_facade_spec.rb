require 'rails_helper'

RSpec.describe 'BooksFacade' do 
  describe "Happy path - data returned as expected" do
    it 'returns quantity and books about the destination city', :vcr do 
      location = "denver,co"
      quantity = "3"
      response = BooksFacade.get_books_for_a_city(location, quantity)
      expect(response).to be_a(Book)
    end
  end 
end