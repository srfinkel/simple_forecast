# reference: https://thoughtbot.com/blog/how-to-stub-external-services-in-tests

require 'sinatra/base'

class FakeGeoapify < Sinatra::Base
	get '/:version/geocode/search' do
		json_response 200, 'geocode.json'
	end

	private

	def json_response(response_code, file_name)
		content_type :json
		status response_code
		File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
	end
end
  