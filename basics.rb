require 'sinatra'



get '/' do
  "Hello, World!"
end


get '/about' do
  'A little about me.'
end


get '/hello/:name' do
  params[:name]
end

get '/more/*' do
  params[:splat]
end

get '/form' do
  erb :form
end

get '/secret' do
  erb :secret
end


get '/decrypt/:secret' do
  params[:secret].reverse
end


post '/form' do
  "You said '#{params[:message]}'"
end


post '/secret' do
  params[:secret].reverse
end	

not_found do
halt 404, 'page not found'       
end