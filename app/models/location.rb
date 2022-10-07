class Location < ApplicationRecord
	validates :address, 		presence: true
	validates :latitude, 		presence: true
	validates :longitude, 	presence: true

	def format_address(address)
		self.address.gsub(/[', ']/, ',' => '%2C', ' ' => '%20')
	end

	# update latitude and longitude
	def add_coordinates(lat, lon)
		self.update(latitude: lat, longitude: lon)
		puts "Location coordinates: #{location.inspect}"
	end
end