require 'rubygems'
require 'sinatra'
require 'sinatra/jsonp'
require 'mongo_mapper'
require './models/email_extension'

configure do
  MongoMapper.connection = Mongo::Connection.new(ENV['RIDEPOST_MONGO_DOMAIN'], ENV['RIDEPOST_MONGO_PORT'])
  MongoMapper.database = ENV['RIDEPOST_MONGO_DB']
  MongoMapper.database.authenticate(ENV['RIDEPOST_MONGO_USERNAME'], ENV['RIDEPOST_MONGO_PASSWORD'])
end

get '/api/:name' do
  result = EmailExtension.where(name: params[:name])

  jsonp result
end
