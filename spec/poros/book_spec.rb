require 'rails_helper'

RSpec.describe Book do
  describe 'it returns all required book and current weather data for provided location' do
    it 'contains destination, forecast, total_books_found, and books' do
      location = "denver,co"
      book_data = {
        "numFound": 35992,
        "start": 0,
        "numFoundExact": true,
        "docs": [
            {
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
        },
        {
            "key": "/works/OL8808821W",
            "text": [
                "/works/OL8808821W",
                "University of Denver Co 2007",
                "OL8537031M",
                "150368610",
                "1427401683",
                "9781427401687",
                "College Prowler",
                "OL3010394A",
                "College Prowler"
            ],
            "type": "work",
            "seed": [
                "/books/OL8537031M",
                "/works/OL8808821W",
                "/authors/OL3010394A"
            ],
            "title": "University of Denver Co 2007",
            "title_suggest": "University of Denver Co 2007",
            "has_fulltext": false,
            "edition_count": 1,
            "edition_key": [
                "OL8537031M"
            ],
            "publish_date": [
                "July 1, 2006"
            ],
            "publish_year": [
                2006
            ],
            "first_publish_year": 2006,
            "oclc": [
                "150368610"
            ],
            "isbn": [
                "1427401683",
                "9781427401687"
            ],
            "last_modified_i": 1304171421,
            "ebook_count_i": 0,
            "cover_edition_key": "OL8537031M",
            "cover_i": 1847337,
            "publisher": [
                "College Prowler"
            ],
            "language": [
                "eng"
            ],
            "author_key": [
                "OL3010394A"
            ],
            "author_name": [
                "College Prowler"
            ],
            "id_goodreads": [
                "2985742"
            ],
            "publisher_facet": [
                "College Prowler"
            ],
            "_version_": 1700720648496611328,
            "author_facet": [
                "OL3010394A College Prowler"
            ]
        },
        {
            "key": "/works/OL4437736W",
            "text": [
                "/works/OL4437736W",
                "Denver Co Deluxe Flip Map",
                "OL10911511M",
                "9780762557363",
                "0762557362",
                "Universal Map Enterprises",
                "OL882946A",
                "Laura Ryder"
            ],
            "type": "work",
            "seed": [
                "/books/OL10911511M",
                "/works/OL4437736W",
                "/authors/OL882946A"
            ],
            "title": "Denver Co Deluxe Flip Map",
            "title_suggest": "Denver Co Deluxe Flip Map",
            "has_fulltext": false,
            "edition_count": 1,
            "edition_key": [
                "OL10911511M"
            ],
            "publish_date": [
                "January 2003"
            ],
            "publish_year": [
                2003
            ],
            "first_publish_year": 2003,
            "isbn": [
                "9780762557363",
                "0762557362"
            ],
            "last_modified_i": 1260838560,
            "ebook_count_i": 0,
            "publisher": [
                "Universal Map Enterprises"
            ],
            "language": [
                "eng"
            ],
            "author_key": [
                "OL882946A"
            ],
            "author_name": [
                "Laura Ryder"
            ],
            "publisher_facet": [
                "Universal Map Enterprises"
            ],
            "_version_": 1700714547654950913,
            "author_facet": [
                "OL882946A Laura Ryder"
            ]
        },
        {
            "key": "/works/OL19500062W",
            "text": [
                "/works/OL19500062W",
                "Photovoltaic safety, Denver, CO, 1988",
                "Photovoltaic safety.",
                "OL2061373M",
                "editor, Werner Luft.",
                "88042854",
                "Solar Energy Research Institute.",
                "Photovoltaics Safety Conference (2nd : 1988 : Denver, Colo.)",
                "Luft, Werner.",
                "9780883183663",
                "0883183668",
                "American Institute of Physics",
                "OL714790A",
                "Werner Luft",
                "Photovoltaic cells",
                "Safety measures",
                "Solar cells",
                "Congresses",
                "Design and construction"
            ],
            "type": "work",
            "seed": [
                "/books/OL2061373M",
                "/works/OL19500062W",
                "/subjects/photovoltaic_cells",
                "/subjects/safety_measures",
                "/subjects/solar_cells",
                "/subjects/congresses",
                "/subjects/design_and_construction",
                "/authors/OL714790A"
            ],
            "title": "Photovoltaic safety, Denver, CO, 1988",
            "title_suggest": "Photovoltaic safety, Denver, CO, 1988",
            "has_fulltext": false,
            "edition_count": 1,
            "edition_key": [
                "OL2061373M"
            ],
            "publish_date": [
                "1988"
            ],
            "publish_year": [
                1988
            ],
            "first_publish_year": 1988,
            "lccn": [
                "88042854"
            ],
            "publish_place": [
                "New York"
            ],
            "contributor": [
                "Solar Energy Research Institute.",
                "Photovoltaics Safety Conference (2nd : 1988 : Denver, Colo.)",
                "Luft, Werner."
            ],
            "lcc": [
                "TK-8322.00000000.P46 1988"
            ],
            "ddc": [
                "621.31244"
            ],
            "isbn": [
                "9780883183663",
                "0883183668"
            ],
            "last_modified_i": 1604827192,
            "ebook_count_i": 0,
            "cover_edition_key": "OL2061373M",
            "cover_i": 4745684,
            "publisher": [
                "American Institute of Physics"
            ],
            "language": [
                "eng"
            ],
            "author_key": [
                "OL714790A"
            ],
            "author_name": [
                "Werner Luft"
            ],
            "subject": [
                "Photovoltaic cells",
                "Safety measures",
                "Solar cells",
                "Congresses",
                "Design and construction"
            ],
            "id_goodreads": [
                "3793862"
            ],
            "publisher_facet": [
                "American Institute of Physics"
            ],
            "subject_facet": [
                "Congresses",
                "Design and construction",
                "Photovoltaic cells",
                "Safety measures",
                "Solar cells"
            ],
            "_version_": 1700705535019450369,
            "lcc_sort": "TK-8322.00000000.P46 1988",
            "author_facet": [
                "OL714790A Werner Luft"
            ],
            "subject_key": [
                "congresses",
                "design_and_construction",
                "photovoltaic_cells",
                "safety_measures",
                "solar_cells"
            ],
            "ddc_sort": "621.31244"
        },
        {
            "key": "/works/OL8541064W",
            "text": [
                "/works/OL8541064W",
                "Insight Fleximap Denver, CO (Insight Fleximaps)",
                "OL9197762M",
                "64038908",
                "9812582622",
                "9789812582621",
                "American Map Corporation",
                "OL2859862A",
                "American Map Corp"
            ],
            "type": "work",
            "seed": [
                "/books/OL9197762M",
                "/works/OL8541064W",
                "/authors/OL2859862A"
            ],
            "title": "Insight Fleximap Denver, CO (Insight Fleximaps)",
            "title_suggest": "Insight Fleximap Denver, CO (Insight Fleximaps)",
            "has_fulltext": false,
            "edition_count": 1,
            "edition_key": [
                "OL9197762M"
            ],
            "publish_date": [
                "January 30, 2006"
            ],
            "publish_year": [
                2006
            ],
            "first_publish_year": 2006,
            "oclc": [
                "64038908"
            ],
            "isbn": [
                "9812582622",
                "9789812582621"
            ],
            "last_modified_i": 1304090516,
            "ebook_count_i": 0,
            "cover_edition_key": "OL9197762M",
            "cover_i": 2302739,
            "publisher": [
                "American Map Corporation"
            ],
            "language": [
                "eng"
            ],
            "author_key": [
                "OL2859862A"
            ],
            "author_name": [
                "American Map Corp"
            ],
            "publisher_facet": [
                "American Map Corporation"
            ],
            "_version_": 1700720351972950018,
            "author_facet": [
                "OL2859862A American Map Corp"
            ]
        },
        {
            "key": "/works/OL8415118W",
            "text": [
                "/works/OL8415118W",
                "Five Points Neighborhood of Denver  (CO)",
                "OL7900786M",
                "47691535",
                "0738518700",
                "9780738518701",
                "After the Civil War, freed slaves came west from the south looking for work.",
                "Arcadia  Publishing (SC)",
                "OL2806763A",
                "Laura M. Mauck"
            ],
            "type": "work",
            "seed": [
                "/books/OL7900786M",
                "/works/OL8415118W",
                "/authors/OL2806763A"
            ],
            "title": "Five Points Neighborhood of Denver  (CO)",
            "title_suggest": "Five Points Neighborhood of Denver  (CO)",
            "has_fulltext": false,
            "edition_count": 1,
            "edition_key": [
                "OL7900786M"
            ],
            "publish_date": [
                "June 11, 2001"
            ],
            "publish_year": [
                2001
            ],
            "first_publish_year": 2001,
            "oclc": [
                "47691535"
            ],
            "isbn": [
                "0738518700",
                "9780738518701"
            ],
            "last_modified_i": 1303742645,
            "ebook_count_i": 0,
            "cover_edition_key": "OL7900786M",
            "cover_i": 1371298,
            "first_sentence": [
                "After the Civil War, freed slaves came west from the south looking for work."
            ],
            "publisher": [
                "Arcadia  Publishing (SC)"
            ],
            "language": [
                "eng"
            ],
            "author_key": [
                "OL2806763A"
            ],
            "author_name": [
                "Laura M. Mauck"
            ],
            "id_librarything": [
                "3305602"
            ],
            "publisher_facet": [
                "Arcadia  Publishing (SC)"
            ],
            "_version_": 1700720198950060033,
            "author_facet": [
                "OL2806763A Laura M. Mauck"
            ]
        },
        {
            "key": "/works/OL10910782M",
            "text": [
                "/works/OL10910782M",
                "Denver, Co Vicinity (City Wall Maps)",
                "OL10910782M",
                "0762538627",
                "9780762538621",
                "Universal Map Enterprises"
            ],
            "type": "work",
            "seed": [
                "/books/OL10910782M",
                "/works/OL10910782M"
            ],
            "title": "Denver, Co Vicinity (City Wall Maps)",
            "title_suggest": "Denver, Co Vicinity (City Wall Maps)",
            "has_fulltext": false,
            "edition_count": 1,
            "edition_key": [
                "OL10910782M"
            ],
            "publish_date": [
                "January 2001"
            ],
            "publish_year": [
                2001
            ],
            "first_publish_year": 2001,
            "isbn": [
                "0762538627",
                "9780762538621"
            ],
            "last_modified_i": 1621432771,
            "ebook_count_i": 0,
            "publisher": [
                "Universal Map Enterprises"
            ],
            "language": [
                "eng"
            ],
            "publisher_facet": [
                "Universal Map Enterprises"
            ],
            "_version_": 1700195490896805890
            }
        ]
        }
      weather_data = {
        "dt": 1623532622,
        "sunrise": 1623497510,
        "sunset": 1623551460,
        "temp": 79.41,
        "feels_like": 79.41,
        "pressure": 1020,
        "humidity": 26,
        "dew_point": 41.58,
        "uvi": 9.49,
        "clouds": 1,
        "visibility": 10000,
        "wind_speed": 5.01,
        "wind_deg": 113,
        "wind_gust": 10,
        "weather": [
            {
                "id": 721,
                "main": "Haze",
                "description": "haze",
                "icon": "50d"
            }
          ]
       }

      book_info = Book.new(location, book_data, weather_data)
      expect(book_info.id).to eq(nil)
      expect(book_info.destination.class).to eq(String)
      expect(book_info.forecast.class).to eq(BookForecast)
      expect(book_info.total_books_found.class).to eq(Integer)
      expect(book_info.books.class).to eq(Array)
    end
  end 
end 