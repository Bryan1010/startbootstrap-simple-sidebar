require "data_mapper"

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db.sqlite")

class Posts
	include DataMapper::Resource
	property :id, Serial, key: true
  property :titlePost, String, length: 128
  property :descPost, String, length: 500
  property :emailPost, String, length: 128
end

DataMapper.finalize

DataMapper.auto_upgrade!