class LocationsController < ApplicationController
  
	def index
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		@coordinates = Geocode.request(@location)
		logger.info "Coordinates: #{@corrdinates}"
		@location.update(location_params.merge(latitude: @coordinates.first, longitude: @coordinates.last))
  end

	def show
	end

	private

		def location_params
			params.require(:location).permit(:name, :address, :latitude, :longitude)
		end
end