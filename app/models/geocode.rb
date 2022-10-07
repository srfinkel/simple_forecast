# frozen_string_literal: true

# This class sends an API request based on the address string in Location to retrieve the latitude and longitude coordinates for Forecast
class Geocode
  require 'uri'
  require 'net/http'
	require 'json'

	LOGGER = ActiveSupport::Logger.new(STDOUT)

	attr_reader :response
	attr_accessor :text, :type, :lang, :limit

	def initialize(text, type='street', lang='en', limit=1)
		@text = text
		@type = type
		@lang = lang
		@limit = limit
		@response = []
	end

	def self.request(location)
		url = URI("https://api.geoapify.com/v1/geocode/search")
		api_key = Rails.application.credentials[:geoapify][:api_key]
		
		# instantiate a new object with the Locations formatted address
		req = Geocode.new(location.format_address(location.address))

		https = Net::HTTP.new(url.host, url.port)
		https.use_ssl = true

		request = Net::HTTP::Get.new("#{url}/?apiKey=#{api_key}&text=#{req.text}&type=#{req.type}&lang=#{req.lang}&limit=#{req.limit}&format=json")

		response = https.request(request)
	
		puts "Response #{response.code} #{response.code.class}"
		if response.code == '200'
			data = JSON.parse(response.body)
			lat = latitude(data)
			lon = longitude(data)
			[lat, lon]
		else
			"There was an issue with this request. Error: #{response.code}, #{response.message}"
		end
	end

	def self.latitude(data)
		return nil if data.nil?

		data['results'].first['lat']
	end

	def self.longitude(data)
		return nil if data.nil?

		lon = data['results'].first['lon']
	end
end