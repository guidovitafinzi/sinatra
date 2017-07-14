require 'sinatra'
set :session_secret, 'super secret'

get '/' do
	'hello!'
end

get '/cat' do
	@name = ["Oscar", "Kitty", "Zoe"].sample
	erb :index
end

get '/cat-form' do
	erb :cat_form
end

post '/named-cat' do
	p params
  @name = params[:name]
  erb :index
end