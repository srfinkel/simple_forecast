class LocationsController < ApplicationController
  def create
		@location = Location.new(location_params)
		

  end

	private

		def location_params
			params.require(:location).permit(:name, :address, :latitude, :longitude)
		end
end