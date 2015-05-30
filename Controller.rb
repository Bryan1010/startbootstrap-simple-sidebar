require 'data_mapper'
DataMapper.setup(:default, "sqlite://#{Dir.pwd}/db.sqlite")

require './Model'

class PostsController
	def create(titlePost, descPost, emailPost)
		if titlePost.nil?
			puts "titlePOst is nil"
		elsif descPost.nil?
			puts "descpost is nil"
		elsif emailPost.nil?
			puts "emailPost is nil"
		elsif titlePost.nil? && descPost.nil? && emailPost.nil?
			puts "all the parameters are nil"
		else
			@post = Posts.new(:titlePost => "#{titlePost}", :descPost => "#{descPost}", :emailPost => "#{emailPost}")
			@post.save!
		end
	end

	def show()
		return Posts.all
	end
end