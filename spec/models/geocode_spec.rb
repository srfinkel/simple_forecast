require 'rails_helper'

RSpec.describe Geocode, type: :model do
  let(:geocode) { FactoryBot.build(:geocode) }

	describe '.get_coordinates' do
		it 'gets lat and long coordinates' do

			
			response = nil
			geocode.get_coordinates

			puts "Request: #{geocode.inspect}"

			expect(geocode).to be_successful  
		end
	end
end