# frozen_string_literal: true

# This class sends an API request based on the address string in Location to retrieve the latitude and longitude coordinates for Forecast
class Geocode
  require 'uri'
  require 'net/http'

	LOGGER = ActiveSupport::Logger.new(STDOUT)

	url = BASE_URI("https://api.geoapify.com/v1/geocode/search")

	https = Net::HTTP.new(url.host, url.port)
	https.use_ssl = true
s
	request = Net::HTTP::Get.new(url)

	response = https.request(request)
	puts response.read_body
end