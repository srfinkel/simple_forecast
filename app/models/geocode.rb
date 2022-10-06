# frozen_string_literal: true

# This class sends an API request based on the address string in Location to retrieve the latitude and longitude coordinates for Forecast
class Geocode
  require 'uri'
  require 'net/http'

	url = URI("https://api.geoapify.com/v1/geocode/search")
	api_key = Rails.application.credentials[:geoapify][:api_key]
	LOGGER = ActiveSupport::Logger.new(STDOUT)

	attr_reader :response

	def initialize(address='', type='street', lang='en', limit=1)
		@text = address
		@type = type
		@lang = lang
		@limit = limit
		@response = []
	end

	def coordinates_request(api_key)
		
	end

	def get_coordinates(response)
		
	end
	# https = Net::HTTP.new(url.host, url.port)
	# https.use_ssl = true

	# request = Net::HTTP::Get.new(url)

	# response = https.request(request)
	# puts response.read_body
end