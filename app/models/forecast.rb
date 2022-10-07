# frozen_string_literal: true

# This class sends an API request to get the weather based on the locations latitude and longitude
class Forecast
  require 'uri'
  require 'net/http'
	require 'json'

	LOGGER = ActiveSupport::Logger.new(STDOUT)

	attr_reader :response
	attr_accessor :location, :fields, :start_time, :end_time, :timesteps, :units, :timezone

	def initialize(location=nil, fields=[], start_time=Time.now, end_time=Time.now, timesteps='current', units='metric', timezone='UTC')
		@location = location
		@fields = fields
		@start_time = start_time
		@end_time = end_time
		@timesteps = timesteps
    @units = units
    @timezone = timezone
		@response = []
	end

	def self.request(location)
		url = URI("https://api.tomorrow.io/v4/timelines")
		api_key = Rails.application.credentials[:tomorrow_io][:api_key]
		fields = [
      "precipitationIntensity",
      "precipitationType",
      "windSpeed",
      "windGust",
      "windDirection",
      "temperature",
      "weatherCode",
    ]

		# instantiate a new object with the Locations formatted address
		req = Forecast.new(location.coordinates, fields)

		https = Net::HTTP.new(url.host, url.port)
		https.use_ssl = true

		request = Net::HTTP::Get.new("#{url}/?location=#{req.location}&fields=#{req.fields}&startTime=#{req.start_time}&endTime=#{req.end_time}&timesteps=#{req.timesteps}&units=#{req.units}&timezone=#{req.timezone}&apikey=#{api_key}")

		response = https.request(request)
	
		puts "Response #{response.code} #{response.code.class}"
		if response.code == '200'
			data = JSON.parse(response.body)
      puts "DATA: #{data}"
		else
			"There was an issue with this request. Error: #{response.code}, #{response.message}"
		end
	end
end