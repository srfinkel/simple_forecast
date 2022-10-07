# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Geocode, type: :model do
  let(:location) { FactoryBot.create(:location) }

	describe '.request' do
		it 'when location is valid' do
			request = Geocode.request(location)
			puts "Request: #{request}"
			expect(request).to eq([37.330614, -122.011627])
		end

		it 'when location is invalid' do
			location.address = 'One Apple Park Way, Cupertino, CA'
			request = Geocode.request(location)

			expect(request).to eq('There was an issue with this request. Error: 404, Not Found')
		end
	end
end