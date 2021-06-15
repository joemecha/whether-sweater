require 'rails_helper'

RSpec.describe OneBook do
  describe 'it encapsulates book data' do 
    it 'holds data for one book returned in search' do 
      book_info = {
            "key": "/works/OL8503198W",
            "text": [
                "/works/OL8503198W",
                "Denver, Co",
                "OL10909613M",
                "9780762507849",
                "0762507845",
                "Universal Map Enterprises",
                "OL2843451A",
                "Universal Map"
            ],
            "type": "work",
            "seed": [
                "/books/OL10909613M",
                "/works/OL8503198W",
                "/authors/OL2843451A"
            ],
            "title": "Denver, Co",
            "title_suggest": "Denver, Co",
            "has_fulltext": false,
            "edition_count": 1,
            "edition_key": [
                "OL10909613M"
            ],
            "publish_date": [
                "January 2001"
            ],
            "publish_year": [
                2001
            ],
            "first_publish_year": 2001,
            "isbn": [
                "9780762507849",
                "0762507845"
            ],
            "last_modified_i": 1338943517,
            "ebook_count_i": 0,
            "publisher": [
                "Universal Map Enterprises"
            ],
            "language": [
                "eng"
            ],
            "author_key": [
                "OL2843451A"
            ],
            "author_name": [
                "Universal Map"
            ],
            "publisher_facet": [
                "Universal Map Enterprises"
            ],
            "_version_": 1700720295581581317,
            "author_facet": [
                "OL2843451A Universal Map"
            ]
        }

      book_info = OneBook.new(book_info)
      expect(book_info.isbn.class).to eq(Array)
      expect(book_info.title.class).to eq(String)
      expect(book_info.publisher.class).to eq(Array)
    end 
  end
end