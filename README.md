Yahoo-Weather
=============

Allows access to the yahoo weather api

1. The first step will be to YWWOEID to get a woeid which you will use later, call [YWHelper getWOEID:longitude:yahooAPIKey:];
2. With the returned YWWOEID.woeid value pass this to [YWHelper getWeather:]; to get forecasts for the city.

NOTE: this source doesn't handle telling you the WOEIDs you will need to either know the latitude and longtitude for the place you want to search for.

More info on WOEIDs can be found here: http://developer.yahoo.com/geo/geoplanet/guide/concepts.html
