require 'sinatra'
require './Controller'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
	@posts = PostsController.new.show()
	erb :index
end

post '/createPost' do
  titlePost = params[:titlePost]
  descPost = params[:descPost]
  emailPost = params[:emailPost]

  PostsController.new.create(titlePost, descPost, emailPost)
  redirect '/'
end
