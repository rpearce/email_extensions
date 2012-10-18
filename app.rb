require 'rubygems'
require 'sinatra'
require 'sinatra/jsonp'
require 'mongo_mapper'
require './models/email_extension'

configure do
  MongoMapper.connection = Mongo::Connection.new('alex.mongohq.com', 10002)
  MongoMapper.database = 'ride_post'
  MongoMapper.database.authenticate(ENV['RIDEPOST_USERNAME'], ENV['RIDEPOST_PASSWORD'])
end

get '/api/:name' do
  result = EmailExtension.where(name: params[:name])

  jsonp result
end
