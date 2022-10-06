# reference: https://thoughtbot.com/blog/how-to-stub-external-services-in-tests

require 'sinatra/base'

class FakeTomorrow < Sinatra::Base
	get '/:version/timelines' do
		json_response 200, 'forecast.json'
	end

	private

	def json_response(response_code, file_name)
		content_type :json
		status response_code
		File.open(File.dirname(__FILE__) + '/fixtures/' + file_name, 'rb').read
	end
end
  