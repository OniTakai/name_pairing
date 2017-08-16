require 'sinatra'
require_relative 'pairing.rb'

get "/" do
	erb :index
end

get '/names'do
	names = params.values
	pair = pair_function(names)
	erb :names, :locals=>{:pair=> pair}

end
post '/names' do
	names = params.values
	pair = pair_function(names)
erb :names, :locals=>{:pair=> pair}
end