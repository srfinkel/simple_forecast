class LocationsController < ApplicationController
  
	def index
		@location = Location.last
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		coordinates = Geocode.request(@location)

		@location.update(location_params.merge(latitude: coordinates.first, longitude: coordinates.last))

		respond_to do |format|
			format.html { redirect_to locations_path, notice: "We were able to get your forecast" }
			format.turbo_stream
		end
  end

	private

		def location_params
			params.require(:location).permit(:name, :address, :latitude, :longitude)
		end
end