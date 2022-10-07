class Location < ApplicationRecord
	validates :address, 		presence: true
	validates :latitude, 		presence: true
	validates :longitude, 	presence: true

	def format_address(address)
		self.address.gsub(/[', ']/, ',' => '%2C', ' ' => '%20')
	end

	# get latitude and longitude
	def coordinates
		lat = self.latitude
		lon = self.longitude
		[lat, lon].join(', ')
	end
end