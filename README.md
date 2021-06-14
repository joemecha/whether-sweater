![Title](lib/images/whether_sweater_title.jpg)
[![Build Status](https://travis-ci.com/joemecha/whether-sweather.svg?branch=main)](https://travis-ci.com/joemecha/whether-sweater)
[![Rails Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop-rails)
## About
This project is the back end of a service-oriented app that allows users to see the current weather as well as the forecasted weather at the destination.

This back-end exposes an API that satisfies a hypothetical front-end team’s requirements.


## Table of contents
[**About**](#about) |
[**Goals**](#goals) |
[**Getting Started**](#getting-started) |
[**Versions**](#versions) |
[**Setup**](#setup) |
[**Endpoints**](#endpoints) |
[**Examples**](#examples) |
[**Tests**](#running-the-tests) |
[**Deployment**](#deployment) |
[**Developer**](#developer) |
[**Acknowledgements**](#acknowledgements) 

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
  3. Setup the database: `rails db:(drop,create,migrate,seed)` or `rails db:setup`
  4. __ADD API DIRECTIONS HERE--HOW TO GET AND PROTECT KEY NAMES - ENV variable, etc__
  4. Run command `rails s` and navigate to http://localhost:3000 to consume API endpoints below

If you are running the API via [Heroku](https://whether-sweater-backend.herokuapp.com/), simply consume endpoints below.

## Endpoints
The following are all API endpoints. Note, some endpoints have optional or required query parameters.
- All endpoints run off base connector http://localhost:3000 on local or https://whether-sweater-backend.herokuapp.com/ on Heroku

### 1a-Retrieve weather for a city:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `GET`    | `/api/v1/forecast?location=denver,co`    | Retrieve specified weather data for a logged in user.                      |


### 1b-Background Image for the city in 1a:

| Method   | URL                                      | Description                              |
| -------- | ---------------------------------------- | ---------------------------------------- |
| `GET`    | `/api/v1/backgrounds?location=denver,co` | Retrieve a background image for the city in the weather call.                      |


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

### 1b-City Background Image (DRAFT):

```
status: 200
body:

{
  "data": {
    "type": "image",
    "id": null,
    "attributes": {
      "image": {
        "location": "denver,co",
        "image_url": "https://pixabay.com/get/54e6d4444f50a814f1dc8460962930761c38d6ed534c704c7c2878dd954dc451_640.jpg",
        "credit": {
          "source": "pixabay.com",
          "author": "quinntheislander",
          "logo": "https://pixabay.com/static/img/logo_square.png"
        }
      }
    }
  }
}

```

## Running the Tests

Run all tests in application with `bundle exec rspec`. When test is complete, run `open coverage` to see where tests are being run and where they are not.


## Deployment

<!-- - To run this app locally, run `rails s` and navigate to `http://localhost:3000/` in your browser.
- To run this app on Heroku, go to https://downdraft-backend.herokuapp.com/ -->

## Built Using
- Ruby on Rails

## Developer
Joe Mecha [GitHub](https://github.com/joemecha) • [LinkedIn](https://www.linkedin.com/in/joemecha/)


~ feel free to contact me ~

<!-- ![Screenshot](lib/images/ADD-A-SCREENSHOT) -->


## Acknowledgments

Thank you to OpenWeather for allowing me to use your API. And thanks to you for reading through this project.
