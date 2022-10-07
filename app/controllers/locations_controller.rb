class LocationsController < ApplicationController
	before_action :set_location, only: [:show, :update]
  
	def index
		@location = Location.last
		@forecast = Forecast.request(@location)
		puts "Forecast: #{@forecast}"
	end

	def show
	end

	def new
		@location = Location.new
	end

	def create
		@location = Location.new(location_params)
		coordinates = Geocode.request(@location)

		@location.update(location_params.merge(latitude: coordinates.first, longitude: coordinates.last))
		if @location.save
			puts "Location has been saved! #{@location.inspect}"
			respond_to do |format|
				format.html { redirect_to locations_path, notice: "What's the weather is like today?" }
				format.turbo_stream
			end
		# else
		# 	render :new, status: :unprocessable_entity
		end
  end

	def update
		if @location.update(location_params)
      redirect_to locations_path, notice: "location was successfully updated."
    else
      render :edit
    end
	end

	private

		def set_location
			@location = Location.find(params[:id])
		end

		def location_params
			params.require(:location).permit(:name, :address, :latitude, :longitude)
		end
end