# frozen_string_literal: true
# reference: https://thoughtbot.com/blog/how-to-stub-external-services-in-tests

require 'rails_helper'
require 'capybara/rspec'

RSpec.feature 'External requests', type: :feature do
  context 'Geocoding' do
		it 'queries external API for the latitude and longitude of a given address' do
			uri = URI('https://api.geoapify.com/v1/geocode/search')

			response = JSON.load(Net::HTTP.get(uri))
			
			expect(response['results'].first['lon']).to eql(-0.160493)
			expect(response['results'].first['lat']).to eql(51.520125)
		end
	end

	context 'Forecast' do
		it 'queries external API for the forecast' do
			uri = URI('https://data.climacell.co/v4/timelines')

			response = JSON.load(Net::HTTP.get(uri))
			
			expect(response['data']['timelines'].first['timestep']).to eq '1m'
		end
	end
end