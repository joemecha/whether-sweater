![Title](lib/images/whether_sweater_title.jpg)
[![Build Status](https://travis-ci.com/joemecha/whether-sweather.svg?branch=main)](https://travis-ci.com/joemecha/whether-sweater)
[![Rails Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop-rails)
## About
This project is the back end of a service-oriented app that allows users to see the current weather as well as the forecasted weather at the destination.

This back-end exposes an API that satisfies a hypothetical front-end team’s requirements.


## Developer
Joe Mecha [GitHub](https://github.com/joemecha) • [LinkedIn](https://www.linkedin.com/in/joemecha/)


## Table of contents
[**About**](#about) |
[**Developer**](#developer) |
[**Goals**](#goals) |
[**Getting Started**](#getting-started) |
[**Versions**](#versions) |
[**Setup**](#setup) |
[**Endpoints**](#endpoints) |
[**Examples**](#examples) |
[**Tests**](#running-the-tests) |
[**Deployment**](#deployment) |
[**Developer**](#developer) |
[**Acknowledgements**](#acknowledgements) |
[**Extensions**](#extensions) |

## Goals
* Expose an API that aggregates data from multiple external APIs
* Expose an API that requires an authentication token
* Expose an API for CRUD functionality
* Determine completion criteria based on the needs of other developers
* Research, select, and consume an API based on your needs as a developer

## Getting Started
Visit [Heroku](https://downdraft-backend.herokuapp.com/) or on [Local Host 3000](http://localhost:3000/) to get started with the steps below.

## Versions
* Ruby 2.5.3
* Rails 5.2.5

## Setup
If you are running this API locally, follow the steps below:
  1. Fork and clone this repo
  2. Install gem packages by running `bundle`
  3. Setup the database: `rails db:(create)`
  4. Obtain necessary API keys
    * OpenWeather: 
    * MapquestAPI:
    * Unsplash API: 
    * No key needed for OpenLibrary
  5. Protect your API keys by placing them in `config/application.yml`. Save under the following variable names:
    * OpenWeather: `weather_api_key:`
    * Maquest: `geocode_key:`
    * Unsplash: `access_key:`
    * Note: key strings must not be placed inside quotes
  6. Run command `rails s` and navigate to http://localhost:3000 to consume API endpoints below

If you are running the API via [Heroku](https://whether-sweater-backend.herokuapp.com/), simply consume endpoints below.

## Endpoints
The following are all API endpoints. Note, some endpoints have optional or required query parameters.
- All endpoints run off base connector http://localhost:3000 on local or https://joe-mecha-whether-sweater.herokuapp.com/ on Heroku

### 1a-Retrieve weather for a city:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `GET`    | `/api/v1/forecast?location=denver,co`    | Retrieve specified weather data for a logged in user.                      |


### 1b-Background Image for the city in 1a:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `GET`    | `/api/v1/backgrounds?location=denver,co` | Retrieve a background image for the city in the weather call.                      |


### 1c-Books for a city:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `GET`    | `/api/v1/book-search?location=denver,co&quantity=7` | Retrieve a list of books for a (well-known) city.                      |


## Examples

### 1-Retrieve weather for a city for Denver, Colorado:

```
{
  "data": {
    "id": null,
    "type": "forecast",
    "attributes": {
      "current_weather": {
        "datetime": "2020-09-30 13:27:03 -0600",
        "temperature": 79.4,
        etc
      },
      "daily_weather": [
        {
          "date": "2020-10-01",
          "sunrise": "2020-10-01 06:10:43 -0600",
          etc
        },
        {...} etc
      ],
      "hourly_weather": [
        {
          "time": "14:00:00",
          "conditions": "cloudy with a chance of meatballs",
          etc
        },
        {...} etc
      ]
    }
  }
}
```

### 1b-City Background Image:

```
status: 200
body:

{
    "data": {
        "id": null,
        "type": "image",
        "attributes": {
            "image": {
                "image_url": "https://images.unsplash.com/photo-1619856699906-09e1f58c98b1?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyMzkzMTR8MHwxfHNlYXJjaHwxfHxkZW52ZXIlMkNjb3xlbnwwfDB8fHwxNjIzNjMzNTc0&ixlib=rb-1.2.1&q=85",
                "description": "Night Time Downtown Denver",
                "credits": {
                    "author": "Ryan De Hamer",
                    "source": "https://unsplash.com/@rdehamer"
                }
            }
        }
    }
}
```


### 1c-Books for a city:
```
{
    "data": {
        "id": null,
        "type": "books",
        "attributes": {
            "destination": "denver,co",
            "forecast": {
                "summary": "clear sky",
                "temperature": "95 F"
            },
            "total_books_found": 35992,
            "books": [
                {
                    "isbn": [
                        "9780762507849",
                        "0762507845"
                    ],
                    "title": "Denver, Co",
                    "publisher": [
                        "Universal Map Enterprises"
                    ]
                },
                {
                    "isbn": [
                        "1427401683",
                        "9781427401687"
                    ],
                    "title": "University of Denver Co 2007",
                    "publisher": [
                        "College Prowler"
                    ]
                },
                {
                    "isbn": [
                        "9780762557363",
                        "0762557362"
                    ],
                    "title": "Denver Co Deluxe Flip Map",
                    "publisher": [
                        "Universal Map Enterprises"
                    ]
                },
                {
                    "isbn": [
                        "9780883183663",
                        "0883183668"
                    ],
                    "title": "Photovoltaic safety, Denver, CO, 1988",
                    "publisher": [
                        "American Institute of Physics"
                    ]
                },
                {
                    "isbn": [
                        "9812582622",
                        "9789812582621"
                    ],
                    "title": "Insight Fleximap Denver, CO (Insight Fleximaps)",
                    "publisher": [
                        "American Map Corporation"
                    ]
                },
                {
                    "isbn": [
                        "0738518700",
                        "9780738518701"
                    ],
                    "title": "Five Points Neighborhood of Denver  (CO)",
                    "publisher": [
                        "Arcadia  Publishing (SC)"
                    ]
                },
                {
                    "isbn": [
                        "0762538627",
                        "9780762538621"
                    ],
                    "title": "Denver, Co Vicinity (City Wall Maps)",
                    "publisher": [
                        "Universal Map Enterprises"
                    ]
                }
            ]
        }
    }
}
```


## Running the Tests

Run all tests in application with `bundle exec rspec`. When test is complete, run `open coverage` to see where tests are being run and where they are not.


## Deployment

- To run this app locally, run `rails s` and navigate to `http://localhost:3000/` in your browser.
- To run this app on Heroku, go to https://downdraft-backend.herokuapp.com/

## Built Using
- Ruby on Rails 5.2.6
- Ruby 5.2.3

<!-- ![Screenshot](lib/images/ADD-A-SCREENSHOT) -->

## Extensions
- Implement Rubocop for strong Ruby code styling (in progress/complete)
- Implement `has_secure_token` to generate API keys (planned)
- Implement Brakeman to identify and fix vulnerabilities (planned)

## Acknowledgments

Thank you to OpenWeather, OpenLibrary, Unsplash, and MapQuest for allowing me to use your APIs. And thanks to you for reading through this project.
