require 'sinatra'
require 'httparty'

get '/' do
	erb :home
end

post '/zip' do
	@zipcode = params['zipcode'] 
	zip_url = 'http://api.zippopotam.us/us/'+ @zipcode
	parsed_zippo = HTTParty.get(zip_url).parsed_response
	#puts parsed_zippo
	latitude = parsed_zippo['places'][0]['latitude']
	longitude = parsed_zippo['places'][0]['longitude']
	url_weather = 'https://api.forecast.io/forecast/cbd360114f15fe29b3845c3b27b9767e/' + latitude + ',' + longitude
	parsed_weather = HTTParty.get(url_weather).parsed_response
	#puts parsed_weather
	@hightemp = parsed_weather['daily']['data'][0]['temperatureMax']
	@lowtemp = parsed_weather['daily']['data'][0]['temperatureMin']
	erb :pantsday
end