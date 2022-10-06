FactoryBot.define do
	factory :geocode do
		address { '38%20Upper%20Montagu%20Street%2C%20Westminster%20W1H%201LJ%2C%20United%20Kingdom' }
		type { 'street' }
		lang { 'en' }
		limit { 1 }

		initialize_with { new(attributes) }
	end
end