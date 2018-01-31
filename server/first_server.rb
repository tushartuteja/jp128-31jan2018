require 'sinatra'

# get '/' do
# 	return "Hello World 12345"
# end
set :public_folder, File.dirname(__FILE__) + '/static'


get '/' do
	erb :index
end

get '/repeat/:variable' do
	variable = params["variable"].to_i
	erb :repeat, locals: {variable: variable}
end

get '/time' do
	erb :time
end

post '/' do
end

get '/test' do
	return "testing"
end

get '/test/:this_can_change' do
	this_can_change = params["this_can_change"]
	return params.to_s
end
