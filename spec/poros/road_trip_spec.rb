require 'rails_helper'

RSpec.describe RoadTrip do
  describe 'it encapsulates road trip data' do 
    it 'holds start, end, travel_time, and weather at eta' do 
      route_info = {
    "route": {
        "hasTollRoad": false,
        "hasBridge": true,
        "boundingBox": {
            "lr": {
                "lng": -104.98484,
                "lat": 35.855114
            },
            "ul": {
                "lng": -112.1437,
                "lat": 39.738453
            }
        },
        "distance": 682.5611,
        "hasTimedRestriction": false,
        "hasTunnel": true,
        "hasHighway": true,
        "computedWaypoints": [],
        "routeError": {
            "errorCode": -400,
            "message": ""
        },
        "formattedTime": "11:06:34",
        "sessionId": "60c967c0-01d7-6750-02b4-34ca-0ad2517c374b",
        "hasAccessRestriction": false,
        "realTime": 41647,
        "hasSeasonalClosure": false,
        "hasCountryCross": false,
        "fuelUsed": 32.23,
        "legs": [],
        "options": {
            "arteryWeights": [],
            "cyclingRoadFactor": 1,
            "timeType": 0,
            "useTraffic": false,
            "returnLinkDirections": false,
            "countryBoundaryDisplay": true,
            "enhancedNarrative": false,
            "locale": "en_US",
            "tryAvoidLinkIds": [],
            "drivingStyle": 2,
            "doReverseGeocode": true,
            "generalize": -1,
            "mustAvoidLinkIds": [],
            "sideOfStreetDisplay": true,
            "routeType": "FASTEST",
            "avoidTimedConditions": false,
            "routeNumber": 0,
            "shapeFormat": "raw",
            "maxWalkingDistance": -1,
            "destinationManeuverDisplay": true,
            "transferPenalty": -1,
            "narrativeType": "text",
            "walkingSpeed": -1,
            "urbanAvoidFactor": -1,
            "stateBoundaryDisplay": true,
            "unit": "M",
            "highwayEfficiency": 22,
            "maxLinkId": 0,
            "maneuverPenalty": -1,
            "avoidTripIds": [],
            "filterZoneFactor": -1,
            "manmaps": "true"
        },
        "locations": [
            {
                "dragPoint": false,
                "displayLatLng": {
                    "lng": -104.984856,
                    "lat": 39.738453
                },
                "adminArea4": "Denver County",
                "adminArea5": "Denver",
                "postalCode": "",
                "adminArea1": "US",
                "adminArea3": "CO",
                "type": "s",
                "sideOfStreet": "N",
                "geocodeQualityCode": "A5XAX",
                "adminArea4Type": "County",
                "linkId": 40287819,
                "street": "",
                "adminArea5Type": "City",
                "geocodeQuality": "CITY",
                "adminArea1Type": "Country",
                "adminArea3Type": "State",
                "latLng": {
                    "lng": -104.984853,
                    "lat": 39.738453
                }
            },
            {
                "dragPoint": false,
                "displayLatLng": {
                    "lng": -112.145164,
                    "lat": 36.052731
                },
                "adminArea4": "Coconino County",
                "adminArea5": "Grand Canyon Village",
                "postalCode": "",
                "adminArea1": "US",
                "adminArea3": "AZ",
                "type": "s",
                "sideOfStreet": "N",
                "geocodeQualityCode": "A5XAX",
                "adminArea4Type": "County",
                "linkId": 32151877,
                "street": "",
                "adminArea5Type": "City",
                "geocodeQuality": "CITY",
                "adminArea1Type": "Country",
                "adminArea3Type": "State",
                "latLng": {
                    "lng": -112.145162,
                    "lat": 36.052731
                }
            }
        ],
        "time": 39994,
        "hasUnpaved": false,
        "locationSequence": [
            0,
            1
        ],
        "hasFerry": false
    },
    "info": {
        "statuscode": 0,
        "copyright": {
            "imageAltText": "© 2021 MapQuest, Inc.",
            "imageUrl": "http://api.mqcdn.com/res/mqlogo.gif",
            "text": "© 2021 MapQuest, Inc."
        },
        "messages": []
    }
}
      travel_time = "11 hours and 34 minutes"
      temperature = 89.9
      conditions = "clear sky"

      roadtrip = RoadTrip.new(route_info, travel_time, temperature, conditions)
      expect(roadtrip.start_city.class).to eq(String)
      expect(roadtrip.end_city.class).to eq(String)
      expect(roadtrip.travel_time.class).to eq(String)
      expect(roadtrip.weather_at_eta.class).to eq(Hash)
      expect(roadtrip.weather_at_eta[:temperature].class).to eq(Float)
      expect(roadtrip.weather_at_eta[:conditions].class).to eq(String)
    end
  end
end