FactoryBot.define do
	factory :geocode do
		type { 'street' }
		lang { 'en' }
		limit { 1 }

		initialize_with { new(attributes) }
	end
end