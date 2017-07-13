require 'sinatra'
set :session_secret, 'super secret'

get '/' do
	'hello!'
end

get '/cat' do
	@name = ["Oscar", "Kitty", "Zoe"].sample
	erb :index
end