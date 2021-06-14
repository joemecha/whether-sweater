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
        "lat": 40.0833,
        "lon": -105.3505,
        "timezone": "America/Denver",
        "timezone_offset": -21600,
        "current": {
            "dt": 1623547357,
            "sunrise": 1623497510,
            "sunset": 1623551460,
            "temp": 76.95,
            "feels_like": 75.85,
            "pressure": 1018,
            "humidity": 32,
            "dew_point": 44.87,
            "uvi": 0.59,
            "clouds": 1,
            "visibility": 10000,
            "wind_speed": 1.01,
            "wind_deg": 133,
            "wind_gust": 4,
            "weather": [
            {
                "id": 800,
                "main": "Clear",
                "description": "clear sky",
                "icon": "01d"
            }
        ]
    },
            "daily": [
              {
            "dt": 1623524400,
            "sunrise": 1623497510,
            "sunset": 1623551460,
            "moonrise": 1623503400,
            "moonset": 1623559680,
            "moon_phase": 0.07,
            "temp": {
                "day": 78.4,
                "min": 50.16,
                "max": 79.56,
                "night": 61.02,
                "eve": 75.56,
                "morn": 57.9
            },
            "feels_like": {
                "day": 77.07,
                "night": 58.51,
                "eve": 74.23,
                "morn": 55.18
            },
            "pressure": 1017,
            "humidity": 24,
            "dew_point": 38.68,
            "wind_speed": 7.34,
            "wind_deg": 72,
            "wind_gust": 10.49,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": 1,
            "pop": 0,
            "uvi": 12.21
        },
        {
            "dt": 1623610800,
            "sunrise": 1623583908,
            "sunset": 1623637886,
            "moonrise": 1623593220,
            "moonset": 1623648660,
            "moon_phase": 0.1,
            "temp": {
                "day": 80.22,
                "min": 56.82,
                "max": 82.36,
                "night": 62.4,
                "eve": 76.93,
                "morn": 63.88
            },
            "feels_like": {
                "day": 78.94,
                "night": 61.21,
                "eve": 75.97,
                "morn": 61.56
            },
            "pressure": 1014,
            "humidity": 24,
            "dew_point": 39.83,
            "wind_speed": 9.71,
            "wind_deg": 69,
            "wind_gust": 10.2,
            "weather": [
                {
                    "id": 500,
                    "main": "Rain",
                    "description": "light rain",
                    "icon": "10d"
                }
            ],
            "clouds": 13,
            "pop": 0.39,
            "rain": 0.44,
            "uvi": 12.75
        },
        {
            "dt": 1623697200,
            "sunrise": 1623670307,
            "sunset": 1623724311,
            "moonrise": 1623683340,
            "moonset": 0,
            "moon_phase": 0.14,
            "temp": {
                "day": 86.04,
                "min": 59.22,
                "max": 88.47,
                "night": 66.69,
                "eve": 81.45,
                "morn": 66
            },
            "feels_like": {
                "day": 82.71,
                "night": 64.47,
                "eve": 79.65,
                "morn": 64.47
            },
            "pressure": 1013,
            "humidity": 16,
            "dew_point": 34.16,
            "wind_speed": 10.85,
            "wind_deg": 79,
            "wind_gust": 13.04,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": 0,
            "pop": 0.15,
            "uvi": 13.02
        },
        {
            "dt": 1623783600,
            "sunrise": 1623756708,
            "sunset": 1623810734,
            "moonrise": 1623773640,
            "moonset": 1623737220,
            "moon_phase": 0.17,
            "temp": {
                "day": 84.96,
                "min": 61.97,
                "max": 88.21,
                "night": 70.32,
                "eve": 85.44,
                "morn": 62.31
            },
            "feels_like": {
                "day": 81.9,
                "night": 68.5,
                "eve": 82.29,
                "morn": 59.85
            },
            "pressure": 1015,
            "humidity": 17,
            "dew_point": 33.96,
            "wind_speed": 9.6,
            "wind_deg": 268,
            "wind_gust": 8.23,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "clouds": 0,
            "pop": 0,
            "uvi": 13.1
        },
        {
            "dt": 1623870000,
            "sunrise": 1623843110,
            "sunset": 1623897156,
            "moonrise": 1623864060,
            "moonset": 1623825540,
            "moon_phase": 0.2,
            "temp": {
                "day": 88.88,
                "min": 64.83,
                "max": 88.88,
                "night": 67.87,
                "eve": 83.82,
                "morn": 64.83
            },
            "feels_like": {
                "day": 84.99,
                "night": 66.2,
                "eve": 81.19,
                "morn": 62.33
            },
            "pressure": 1013,
            "humidity": 14,
            "dew_point": 33.03,
            "wind_speed": 13.53,
            "wind_deg": 40,
            "wind_gust": 15.17,
            "weather": [
                {
                    "id": 803,
                    "main": "Clouds",
                    "description": "broken clouds",
                    "icon": "04d"
                }
            ],
            "clouds": 70,
            "pop": 0.03,
            "uvi": 10.78
        }
      ],
        "hourly": [
        {
            "dt": 1623531600,
            "temp": 79.41,
            "feels_like": 79.41,
            "pressure": 1020,
            "humidity": 26,
            "dew_point": 41.58,
            "uvi": 9.49,
            "clouds": 1,
            "visibility": 10000,
            "wind_speed": 5.68,
            "wind_deg": 77,
            "wind_gust": 10.49,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623535200,
            "temp": 79.56,
            "feels_like": 79.56,
            "pressure": 1018,
            "humidity": 24,
            "dew_point": 39.63,
            "uvi": 6.51,
            "clouds": 3,
            "visibility": 10000,
            "wind_speed": 7.34,
            "wind_deg": 72,
            "wind_gust": 9.4,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623538800,
            "temp": 79.36,
            "feels_like": 79.36,
            "pressure": 1016,
            "humidity": 23,
            "dew_point": 38.39,
            "uvi": 3.85,
            "clouds": 7,
            "visibility": 10000,
            "wind_speed": 5.84,
            "wind_deg": 67,
            "wind_gust": 7.54,
            "weather": [
                {
                    "id": 800,
                    "main": "Clear",
                    "description": "clear sky",
                    "icon": "01d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623542400,
            "temp": 78.53,
            "feels_like": 77.16,
            "pressure": 1015,
            "humidity": 23,
            "dew_point": 37.69,
            "uvi": 1.8,
            "clouds": 14,
            "visibility": 10000,
            "wind_speed": 5.01,
            "wind_deg": 47,
            "wind_gust": 5.79,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623546000,
            "temp": 75.56,
            "feels_like": 74.23,
            "pressure": 1013,
            "humidity": 30,
            "dew_point": 41.99,
            "uvi": 0.59,
            "clouds": 35,
            "visibility": 10000,
            "wind_speed": 4.52,
            "wind_deg": 23,
            "wind_gust": 7.09,
            "weather": [
                {
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623549600,
            "temp": 67.08,
            "feels_like": 65.32,
            "pressure": 1013,
            "humidity": 39,
            "dew_point": 41.14,
            "uvi": 0,
            "clouds": 29,
            "visibility": 10000,
            "wind_speed": 3.58,
            "wind_deg": 302,
            "wind_gust": 4.21,
            "weather": [
                {
                    "id": 802,
                    "main": "Clouds",
                    "description": "scattered clouds",
                    "icon": "03d"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623553200,
            "temp": 63.12,
            "feels_like": 60.93,
            "pressure": 1014,
            "humidity": 38,
            "dew_point": 36.57,
            "uvi": 0,
            "clouds": 21,
            "visibility": 10000,
            "wind_speed": 6.67,
            "wind_deg": 273,
            "wind_gust": 5.44,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02n"
                }
            ],
            "pop": 0
        },
        {
            "dt": 1623556800,
            "temp": 61.63,
            "feels_like": 59.27,
            "pressure": 1015,
            "humidity": 38,
            "dew_point": 35.19,
            "uvi": 0,
            "clouds": 15,
            "visibility": 10000,
            "wind_speed": 7.14,
            "wind_deg": 273,
            "wind_gust": 5.86,
            "weather": [
                {
                    "id": 801,
                    "main": "Clouds",
                    "description": "few clouds",
                    "icon": "02n"
                }
            ],
            "pop": 0
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