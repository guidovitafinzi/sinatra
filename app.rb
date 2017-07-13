require 'sinatra'
set :session_secret, 'super secret'

get '/' do
	'hello!'
end

get '/secret' do
	'secret page'
end