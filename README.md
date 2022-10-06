# README

A simple weather forecasting application. 

Ruby 3.0.0<br>
Rails 7.0.4

# Requirements

- take an address as an input (may need a separate geo-coding API to get latlong coordinates)
- at minimum, retrieve the current forecast
- bonus to get the high/low and/or extended forecast
- display the forecast to the user
- cache forecast details for 30mins for all subsquent requests by zip codes
- display an indicator if result is pulled from cache
- include unit tests
- detailed comments and documentation
- include Decomposition of objects in the documentation (activity diagram or sequence diagram)
- include design patterns (where/if applicable)
- scalability considerations
- naming conventions
- encapsulation
- dry/ abstact code

# APIs

[Geoapify](https://apidocs.geoapify.com/) - retrieves the latitude and logitude of an street address.

[Tomorrow.io](https://www.weather.gov/documentation/services-web-api) - accepts latitude and longitude for location and a timestep for each API . returns a plethora of weather information including weather icons.

# TO DOs before submitting

- see if # frozen_string_literal: true is still needed for ruby-3.1
- upgrade to ruby 3.1
- clean up Gemfile