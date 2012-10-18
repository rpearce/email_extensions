require 'mongo_mapper'

class EmailExtension
  include MongoMapper::Document

  key :name, String
  key :extensions, Array
end