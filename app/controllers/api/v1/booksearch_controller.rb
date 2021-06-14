class Api::V1::BooksearchController < ApplicationController
  def index
    if params[:location] == '' || !(params[:location]).ascii_only? || (params[:quantity].to_i < 1)
      # note: add condition that params[:quantity] MUST be an integer
      render json: { errors: 'Missing or incorrect query params' }, status: :bad_request
    else
      book_results = BooksFacade.get_books_for_a_city(params[:location], params[:quantity])
      render json: BooksSerializer.new(book_results)
    end
  end
end