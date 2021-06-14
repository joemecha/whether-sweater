class BookSerializer
  include FastJsonapi::ObjectSerializer
  set_id :id
  attributes :destination, :forecast, :total_books_found, :books
end
