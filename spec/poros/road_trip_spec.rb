require 'rails_helper'

RSpec.describe RoadTrip do
  describe 'it encapsulates road trip data' do 
    it 'holds start, end, travel_time, and weather at eta' do 
      route_info = {
        "hasTollRoad": false,
        "hasBridge": true,
        "boundingBox": {
            "lr": {
                "lng": -105.132141,
                "lat": 39.957218
            },
            "ul": {
                "lng": -105.279266,
                "lat": 40.017353
            }
        },
        "distance": 11.061,
        "hasTimedRestriction": false,
        "hasTunnel": false,
        "hasHighway": true,
        "computedWaypoints": [],
        "routeError": {
            "errorCode": -400,
            "message": ""
        },
        "formattedTime": "00:16:31",
        "sessionId": "60c99a89-036e-6750-02b4-34ca-0ad2517c374b",
        "hasAccessRestriction": false,
        "realTime": 1214,
        "hasSeasonalClosure": false,
        "hasCountryCross": false,
        "fuelUsed": 0.53,
        "legs": [
            {
                "hasTollRoad": false,
                "hasBridge": true,
                "destNarrative": "Proceed to LOUISVILLE, CO.",
                "distance": 11.061,
                "hasTimedRestriction": false,
                "hasTunnel": false,
                "hasHighway": true,
                "index": 0,
                "formattedTime": "00:16:31",
                "origIndex": 1,
                "hasAccessRestriction": false,
                "hasSeasonalClosure": false,
                "hasCountryCross": false,
                "roadGradeStrategy": [
                    []
                ],
                "destIndex": 4,
                "time": 991,
                "hasUnpaved": false,
                "origNarrative": "Go east on US-36 E.",
                "maneuvers": [
                    {
                        "distance": 1.093,
                        "streets": [
                            "Canyon Blvd",
                            "CO-119"
                        ],
                        "narrative": "Start out going east on Canyon Blvd/CO-119 toward 13th St.",
                        "turnType": 0,
                        "startPoint": {
                            "lng": -105.279266,
                            "lat": 40.015831
                        },
                        "index": 0,
                        "formattedTime": "00:02:10",
                        "directionName": "East",
                        "maneuverNotes": [],
                        "linkIds": [],
                        "signs": [
                            {
                                "extraText": "",
                                "text": "119",
                                "type": 505,
                                "url": "http://icons.mqcdn.com/icons/rs505.png?n=119",
                                "direction": 0
                            }
                        ],
                        "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=rXKxhUwdl8iTdNqGbgqB3sBNQlEnXwG0&size=225,160&locations=40.015830993652344,-105.27926635742188|marker-1||40.01735305786133,-105.25890350341797|marker-2||&center=40.016592025756836,-105.26908493041992&defaultMarker=none&zoom=10&rand=-587385845&session=60c99a89-036e-6750-02b4-34ca-0ad2517c374b",
                        "transportMode": "AUTO",
                        "attributes": 0,
                        "time": 130,
                        "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-start_sm.gif",
                        "direction": 8
                    },
                    {
                        "distance": 6.737,
                        "streets": [
                            "US-36 E"
                        ],
                        "narrative": "Take US-36 E.",
                        "turnType": 2,
                        "startPoint": {
                            "lng": -105.258904,
                            "lat": 40.017353
                        },
                        "index": 1,
                        "formattedTime": "00:07:25",
                        "directionName": "East",
                        "maneuverNotes": [],
                        "linkIds": [],
                        "signs": [
                            {
                                "extraText": "",
                                "text": "36",
                                "type": 2,
                                "url": "http://icons.mqcdn.com/icons/rs2.png?n=36&d=EAST",
                                "direction": 8
                            }
                        ],
                        "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=rXKxhUwdl8iTdNqGbgqB3sBNQlEnXwG0&size=225,160&locations=40.01735305786133,-105.25890350341797|marker-2||39.959083557128906,-105.1690902709961|marker-3||&center=39.98821830749512,-105.21399688720703&defaultMarker=none&zoom=7&rand=-587385845&session=60c99a89-036e-6750-02b4-34ca-0ad2517c374b",
                        "transportMode": "AUTO",
                        "attributes": 1152,
                        "time": 445,
                        "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                        "direction": 8
                    },
                    {
                        "distance": 0.182,
                        "streets": [],
                        "narrative": "Take the exit.",
                        "turnType": 14,
                        "startPoint": {
                            "lng": -105.16909,
                            "lat": 39.959084
                        },
                        "index": 2,
                        "formattedTime": "00:00:18",
                        "directionName": "Southeast",
                        "maneuverNotes": [],
                        "linkIds": [],
                        "signs": [],
                        "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=rXKxhUwdl8iTdNqGbgqB3sBNQlEnXwG0&size=225,160&locations=39.959083557128906,-105.1690902709961|marker-3||39.957218170166016,-105.16676330566406|marker-4||&center=39.95815086364746,-105.16792678833008&defaultMarker=none&zoom=12&rand=-587385845&session=60c99a89-036e-6750-02b4-34ca-0ad2517c374b",
                        "transportMode": "AUTO",
                        "attributes": 0,
                        "time": 18,
                        "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_gr_exitright_sm.gif",
                        "direction": 5
                    },
                    {
                        "distance": 0.053,
                        "streets": [],
                        "narrative": "Keep left at the fork in the ramp.",
                        "turnType": 17,
                        "startPoint": {
                            "lng": -105.166763,
                            "lat": 39.957218
                        },
                        "index": 3,
                        "formattedTime": "00:00:08",
                        "directionName": "Northeast",
                        "maneuverNotes": [],
                        "linkIds": [],
                        "signs": [],
                        "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=rXKxhUwdl8iTdNqGbgqB3sBNQlEnXwG0&size=225,160&locations=39.957218170166016,-105.16676330566406|marker-4||39.95729064941406,-105.16586303710938|marker-5||&center=39.95725440979004,-105.16631317138672&defaultMarker=none&zoom=15&rand=-587385845&session=60c99a89-036e-6750-02b4-34ca-0ad2517c374b",
                        "transportMode": "AUTO",
                        "attributes": 0,
                        "time": 8,
                        "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_fork_left2_sm.gif",
                        "direction": 3
                    },
                    {
                        "distance": 1.069,
                        "streets": [
                            "S McCaslin Blvd"
                        ],
                        "narrative": "Merge onto S McCaslin Blvd.",
                        "turnType": 11,
                        "startPoint": {
                            "lng": -105.165863,
                            "lat": 39.957291
                        },
                        "index": 4,
                        "formattedTime": "00:02:10",
                        "directionName": "North",
                        "maneuverNotes": [],
                        "linkIds": [],
                        "signs": [],
                        "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=rXKxhUwdl8iTdNqGbgqB3sBNQlEnXwG0&size=225,160&locations=39.95729064941406,-105.16586303710938|marker-5||39.972259521484375,-105.16407775878906|marker-6||&center=39.96477508544922,-105.16497039794922&defaultMarker=none&zoom=9&rand=-587385845&session=60c99a89-036e-6750-02b4-34ca-0ad2517c374b",
                        "transportMode": "AUTO",
                        "attributes": 1024,
                        "time": 130,
                        "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_merge_left_sm.gif",
                        "direction": 1
                    },
                    {
                        "distance": 0.64,
                        "streets": [
                            "Via Appia Way"
                        ],
                        "narrative": "Turn right onto Via Appia Way.",
                        "turnType": 2,
                        "startPoint": {
                            "lng": -105.164078,
                            "lat": 39.97226
                        },
                        "index": 5,
                        "formattedTime": "00:01:16",
                        "directionName": "Northeast",
                        "maneuverNotes": [],
                        "linkIds": [],
                        "signs": [],
                        "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=rXKxhUwdl8iTdNqGbgqB3sBNQlEnXwG0&size=225,160&locations=39.972259521484375,-105.16407775878906|marker-6||39.97667694091797,-105.15387725830078|marker-7||&center=39.97446823120117,-105.15897750854492&defaultMarker=none&zoom=11&rand=-587385845&session=60c99a89-036e-6750-02b4-34ca-0ad2517c374b",
                        "transportMode": "AUTO",
                        "attributes": 0,
                        "time": 76,
                        "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                        "direction": 3
                    },
                    {
                        "distance": 1.287,
                        "streets": [
                            "W Pine St"
                        ],
                        "narrative": "Turn right onto W Pine St.",
                        "turnType": 2,
                        "startPoint": {
                            "lng": -105.153877,
                            "lat": 39.976677
                        },
                        "index": 6,
                        "formattedTime": "00:03:04",
                        "directionName": "East",
                        "maneuverNotes": [],
                        "linkIds": [],
                        "signs": [],
                        "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=rXKxhUwdl8iTdNqGbgqB3sBNQlEnXwG0&size=225,160&locations=39.97667694091797,-105.15387725830078|marker-7||39.976837158203125,-105.13214111328125|marker-8||&center=39.97675704956055,-105.14300918579102&defaultMarker=none&zoom=10&rand=-587385845&session=60c99a89-036e-6750-02b4-34ca-0ad2517c374b",
                        "transportMode": "AUTO",
                        "attributes": 0,
                        "time": 184,
                        "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                        "direction": 8
                    },
                    {
                        "distance": 0,
                        "streets": [],
                        "narrative": "Welcome to LOUISVILLE, CO.",
                        "turnType": -1,
                        "startPoint": {
                            "lng": -105.132141,
                            "lat": 39.976837
                        },
                        "index": 7,
                        "formattedTime": "00:00:00",
                        "directionName": "",
                        "maneuverNotes": [],
                        "linkIds": [],
                        "signs": [],
                        "transportMode": "AUTO",
                        "attributes": 0,
                        "time": 0,
                        "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-end_sm.gif",
                        "direction": 0
                    }
                ],
                "hasFerry": false
            }
        ],
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
                    "lng": -105.279266,
                    "lat": 40.015831
                },
                "adminArea4": "Boulder County",
                "adminArea5": "Boulder",
                "postalCode": "",
                "adminArea1": "US",
                "adminArea3": "CO",
                "type": "s",
                "sideOfStreet": "N",
                "geocodeQualityCode": "A5XAX",
                "adminArea4Type": "County",
                "linkId": 28629206,
                "street": "",
                "adminArea5Type": "City",
                "geocodeQuality": "CITY",
                "adminArea1Type": "Country",
                "adminArea3Type": "State",
                "latLng": {
                    "lng": -105.27927,
                    "lat": 40.015831
                }
            },
            {
                "dragPoint": false,
                "displayLatLng": {
                    "lng": -105.132141,
                    "lat": 39.976837
                },
                "adminArea4": "Boulder County",
                "adminArea5": "Louisville",
                "postalCode": "",
                "adminArea1": "US",
                "adminArea3": "CO",
                "type": "s",
                "sideOfStreet": "N",
                "geocodeQualityCode": "A5XAX",
                "adminArea4Type": "County",
                "linkId": 44141052,
                "street": "",
                "adminArea5Type": "City",
                "geocodeQuality": "CITY",
                "adminArea1Type": "Country",
                "adminArea3Type": "State",
                "latLng": {
                    "lng": -105.132138,
                    "lat": 39.976838
                }
            }
        ],
        "time": 991,
        "hasUnpaved": false,
        "locationSequence": [
            0,
            1
        ],
        "hasFerry": false
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